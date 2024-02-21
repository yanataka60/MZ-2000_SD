LDINF		EQU		0602H		;STARTアドレス、ファイルサイズセット
GETKY		EQU		0962H		;キーボートから1文字だけAレジスタに取り込む
PRNT		EQU		09A0H		;AレジスタのASCIIコードを表示
DSPNAM		EQU		09E7H		;書き込みしているファイルネームを表示
MSG			EQU		09FBH		;DEレジスタの示すアドレスの文字列表示
LETLN		EQU		0AB6H		;行を替えて次の行の先頭にカーソル移動
GETL		EQU		0F09H		;キーボードから1行入力 DE<-BUFF

WRIMES		EQU		093BH		;'WRITING '
KNUMBS		EQU		0F07H		;GETLで入力可能最大文字数
DSPX		EQU		13A8H		;カーソル水平位置
IBUFE		EQU		1455H		;インフォメーションブロック先頭番地
FNAME		EQU		1456H		;ファイル名
FSIZE		EQU		1467H		;ファイルサイズ
SADRS		EQU		1469H		;START番地
LBUF		EQU		3000H		;行入力バッファ
MBUF		EQU		3080H		;DOSファイルネーム入力用行入力バッファ

;0A0H PORTA 送信データ(下位4ビット)
;0A1H PORTB 受信データ(8ビット)
;
;0A2H PORTC Bit
;7 IN  CHK
;6 IN
;5 IN
;4 IN 
;3 OUT
;2 OUT FLG
;1 OUT
;0 OUT
;
;0A3H コントロールレジスタ

ENT:
		ORG		09000H

		JP		INIT3
;******************** MONITOR CMTルーチン代替 *************************************
ENT1:	JP		MSHED
ENT2:	JP		MSDAT
ENT3:	JP		MLHED
ENT4:	JP		MLDAT
		
;**** 8255初期化 ****
;PORTC下位BITをOUTPUT、上位BITをINPUT、PORTBをINPUT、PORTAをOUTPUT
INIT:	LD		A,8AH
		OUT		(0A3H),A
;出力BITをリセット
INIT2:	LD		A,00H      ;PORTA <- 0
		OUT		(0A0H),A
		OUT		(0A2H),A   ;PORTC <- 0
		RET

INIT3:	LD		A,0C3H		;WRINF代替ルーチンへジャンプ
		LD		(05CEH),A
		LD		HL,ENT1
		LD		(05CEH+1),HL

		LD		A,0C3H		;WRDAT代替ルーチンへジャンプ
		LD		(05FBH),A
		LD		HL,ENT2
		LD		(05FBH+1),HL

		LD		A,0C3H		;RDINF代替ルーチンへジャンプ
		LD		(060AH),A
		LD		HL,ENT3
		LD		(060AH+1),HL

		LD		A,0C3H		;RDDAT代替ルーチンへジャンプ
		LD		(0629H),A
		LD		HL,ENT4
		LD		(0629H+1),HL

		JP		0000H

;**** DIRLIST本体 (HL=行頭に付加する文字列の先頭アドレス BC=行頭に付加する文字列の長さ) ****
;****              戻り値 A=エラーコード ****
DIRLIST:
		LD		A,83H      ;DIRLISTコマンド83Hを送信
		CALL	MCMD	   ;コマンドコード送信
		AND		A          ;00以外ならERROR
		RET		NZ
		
		PUSH	BC
		LD		B,21H
STLT1:	LD		A,(DE)
		CP		0DH
		JR		NZ,STLT2
		LD		A,00H
STLT2:	CALL	SNDBYTE           ;ページ指示を送信
		INC		DE
		DEC		B
		JR		NZ,STLT1
		POP		BC
DL1:
		PUSH	HL
		PUSH	BC
		LD		DE,LBUF
		LDIR
		EX		DE,HL
DL2:	CALL	RCVBYTE           ;'00H'を受信するまでを一行とする
		CP		00H
		JR		Z,DL3
		CP		0FFH              ;'0FFH'を受信したら終了
		JR		Z,DL4
		CP		0FEH              ;'0FEH'を受信したら一時停止して一文字入力待ち
		JR		Z,DL5
		LD		(HL),A
		INC		HL
		JR		DL2
DL3:	LD		DE,LBUF           ;'00H'を受信したら一行分を表示して改行
		CALL	MSG
		CALL	LETLN
		POP		BC
		POP		HL
		JR		DL1
DL4:	CALL	RCVBYTE           ;状態取得(00H=OK)
		POP		BC
		POP		HL
		RET

DL5:	LD		DE,MSG_KEY1        ;HIT ANT KEY表示
		CALL	MSG
		LD		A,82H
		CALL	PRNT
		LD		DE,MSG_KEY2        ;HIT ANT KEY表示
		CALL	MSG
		CALL	LETLN
DL6:	CALL	GETKY              ;1文字入力待ち
		CP		00H
		JR		Z,DL6
		CP		0BH               ;SHIFT+BREAKで打ち切り
		JR		Z,DL7
		CP		02H               ;カーソル↑で打ち切り
		JR		Z,DL9
		CP		42H               ;「B」で前ページ
		JR		Z,DL8
		LD		A,00H             ;それ以外で継続
		JR		DL8
DL9:	LD		A,02H            ;カーソル↑で打ち切ったときにカーソル2行上へ
		CALL	PRNT
		LD		A,02H
		CALL	PRNT
DL7:	LD		A,0FFH            ;0FFH中断コードを送信
DL8:	CALL	SNDBYTE
		CALL	LETLN
		JR		DL2
;		RET
		
;**** 1BYTE受信 ****
;受信DATAをAレジスタにセットしてリターン
RCVBYTE:
		CALL	F1CHK      ;PORTC BIT7が1になるまでLOOP
		IN		A,(0A1H)   ;PORTB -> A
		PUSH 	AF
		LD		A,05H
		OUT		(0A3H),A    ;PORTC BIT2 <- 1
		CALL	F2CHK      ;PORTC BIT7が0になるまでLOOP
		LD		A,04H
		OUT		(0A3H),A    ;PORTC BIT2 <- 0
		POP 	AF
		RET
		
;**** 1BYTE送信 ****
;Aレジスタの内容をPORTA下位4BITに4BITずつ送信
SNDBYTE:
		PUSH	AF
		RRA
		RRA
		RRA
		RRA
		AND		0FH
		CALL	SND4BIT
		POP		AF
		AND		0FH
		CALL	SND4BIT
		RET

;**** 4BIT送信 ****
;Aレジスタ下位4ビットを送信する
SND4BIT:
		OUT		(0A0H),A
		LD		A,05H
		OUT		(0A3H),A    ;PORTC BIT2 <- 1
		CALL	F1CHK      ;PORTC BIT7が1になるまでLOOP
		LD		A,04H
		OUT		(0A3H),A    ;PORTC BIT2 <- 0
		CALL	F2CHK
		RET
		
;**** BUSYをCHECK(1) ****
; 82H BIT7が1になるまでLOP
F1CHK:	IN		A,(0A2H)
		AND		80H        ;PORTC BIT7 = 1?
		JR		Z,F1CHK
		RET

;**** BUSYをCHECK(0) ****
; 82H BIT7が0になるまでLOOP
F2CHK:	IN		A,(0A2H)
		AND		80H        ;PORTC BIT7 = 0?
		JR		NZ,F2CHK
		RET

LOOP:	PUSH	BC			;8088からのデータ待ちループ
		LD		B,20H
LOP2:	LD		C,00H
		DJNZ	LOP2
		POP		BC
		RET

;******** MESSAGE DATA ********************
MSG_KEY1:
		DB		'NEXT:ANY BACK:B BREAK:'
		DB		0DH
MSG_KEY2:
		DB		' OR SHIFT+BREAK'
		DB		0DH
		
MSG_DNAME:
		DB		'DOS FILE:'
MSG_DNAMEEND:
		DB		'                            '
		DB		0DH
		
;*********************** 05CBH WRINF 代替処理 ************
MSHED:
		CALL	INIT
		LD		A,91H      ;HEADER SAVEコマンド91H
		CALL	MCMD       ;コマンドコード送信
		AND		A          ;00以外ならERROR
		JP		NZ,ERR1

		LD		HL,IBUFE	;インフォメーションブロック
		LD		BC,0080H
		CALL	WTAPE		;インフォメーションブロックSD書き込み
		LD		DE,WRIMES	;WRITINGメッセージ表示
		CALL	DSPNAM

		CALL	RCVBYTE    ;状態取得(00H=OK)
		AND		A          ;00以外ならERROR
		JP		NZ,ERR1
		RET

WTAPE:	PUSH	BC
		PUSH	HL
WTAP1:	IN		A,(0D4H)	;8088からデータ受取
		LD		(HL),A		;インフォメーションブロックに書き込み
		CALL	SNDBYTE		;Arduinoへ1Byte送信
		INC		HL
		DEC		BC
		LD		A,B
		OR		C
		JR		NZ,WTAP1
		IN		A,(0D4H)	;Check Sum受取読み飛ばし
		CALL	LOOP
		IN		A,(0D4H)	;Check Sum受取読み飛ばし
		CALL	LOOP
		POP		HL
		POP		BC

;8088から送られてくる2回目書き込み用データを読み飛ばし
		PUSH	BC
		PUSH	HL
WTAP5:	IN		A,(0D4H)	;8088からデータ受取読み飛ばし
		CALL	LOOP
		INC		HL
		DEC		BC
		LD		A,B
		OR		C
		JR		NZ,WTAP5
		IN		A,(0D4H)	;Check Sum受取読み飛ばし
		CALL	LOOP
		IN		A,(0D4H)	;Check Sum受取読み飛ばし
		CALL	LOOP
		XOR		A
		LD		A,00H
		POP		HL
		POP		BC
		RET

ERR1:	CP		0F0H
		JR		NZ,ERR3
		LD		DE,MSG_F0  ;SD-CARD INITIALIZE ERROR
		JR		ERRMSG
ERR3:	CP		0F1H
		JR		NZ,ERR4
		LD		DE,MSG_F1  ;NOT FIND FILE
		JR		ERRMSG
ERR4:	CP		0F3H
		JR		NZ,ERR5
		LD		DE,MSG_F3  ;FILE EXIST
		JR		ERRMSG
ERR5:	CP		0F4H
		JR		NZ,ERR99
		LD		DE,MSG_CMD
		JR		ERRMSG
ERR99:	PUSH	AF
		SRL		A
		SRL		A
		SRL		A
		SRL		A
		CALL	ASC
		CALL	PRNT
		POP		AF
		CALL	ASC
		CALL	PRNT
		LD		DE,MSG99   ;その他ERROR
ERRMSG:	CALL	MSG
		SCF
		RET

;Aレジスタ下位4ビットの値を16進数を表すASCII文字列に変換
ASC:	AND		0FH
		ADD		A,30H
		CP		3AH
		RET		C
		ADD		A,07H
		RET

MSG_CMD:
		DB		'COMMAND FAILED!'
		DB		0DH
		
MSG_F0:
		DB		'SD-CARD INITIALIZE ERROR'
		DB		0DH
		
MSG_F1:
		DB		'NOT FIND FILE'
		DB		0DH
		
MSG_F3:
		DB		'FILE EXIST'
		DB		0DH
		
MSG99:
		DB		' ERROR'
		DB		0DH
		

;******************** 05F8H WRDAT 代替処理 **********************
MSDAT:
		LD		A,92H      ;DATA SAVEコマンド92H
		CALL	MCMD       ;コマンドコード送信
		AND		A          ;00以外ならERROR
		JP		NZ,ERR1

		LD		HL,FSIZE   ;FSIZE送信
		LD		A,(HL)
		CALL	SNDBYTE
		INC		HL
		LD		A,(HL)
		CALL	SNDBYTE

		CALL	RCVBYTE    ;状態取得(00H=OK)
		AND		A          ;00以外ならERROR
		JP		NZ,ERR1

		CALL	LDINF		;STARTアドレス、転送バイト数をセット
		CALL	WDTAPE		;実データをSDに書き込み

		RET

WDTAPE:	PUSH	BC
		PUSH	HL
WDTAP1:	IN		A,(0D4H)	;8088からデータ受取
		CALL	SNDBYTE		;Arduinoへ送信
		INC		HL
		DEC		BC
		LD		A,B
		OR		C
		JR		NZ,WDTAP1
		IN		A,(0D4H)	;Check Sum受取読み飛ばし
		CALL	LOOP
		IN		A,(0D4H)	;Check Sum受取読み飛ばし
		CALL	LOOP
		POP		HL
		POP		BC

		PUSH	BC
		PUSH	HL
WDTAP5:	IN		A,(0D4H)	;8088からデータ受取読み飛ばし
		CALL	LOOP
		INC		HL
		DEC		BC
		LD		A,B
		OR		C
		JR		NZ,WDTAP5
		IN		A,(0D4H)	;Check Sum受取読み飛ばし
		CALL	LOOP
		IN		A,(0D4H)	;Check Sum受取読み飛ばし
		CALL	LOOP
		XOR		A
		LD		A,00H
		POP		HL
		POP		BC

		RET

;************************** 060AH RDINF 代替処理 *****************
MLHED:
		CALL	INIT

		LD		B,00H      ;LBUFを0DHで埋めファイルネームが指定されなかったことにする、MBUFも0DH埋め
		LD		DE,LBUF
		LD		A,0DH
MLH0:	LD		(DE),A
		INC		DE
		DJNZ	MLH0

		LD		A,03H          ;一行分をクリアするため3文字削除、37文字出力
		LD		(DSPX),A
		LD		A,07H			;DELETE
		CALL	PRNT
		LD		A,07H			;DELETE
		CALL	PRNT
		LD		A,07H			;DELETE
		CALL	PRNT
MLH6:	LD		DE,MSG_DNAME   ;'DOS FILE:'
		CALL	MSG
		LD		A,09H          ;カーソルを9文字目に戻す
		LD		(DSPX),A

		LD		DE,MBUF    ;DOSファイルネームを入力する。
		LD		A,39
		LD		(KNUMBS),A
		CALL	GETL
		
		LD		DE,MBUF+9
		
		LD		A,(DE)
;**** ファイルネームの先頭が'*'なら拡張コマンド処理へ移行 ****
		CP		'*'
		JR		Z,MLHCMD

		LD		A,93H      ;HEADER LOADコマンド93H
		CALL	MCMD       ;コマンドコード送信
		AND		A          ;00以外ならERROR
		JP		NZ,ERR1

MLH1:
		LD		A,(DE)
		CP		20H                 ;行頭のスペースをファイルネームまで読み飛ばし
		JR		NZ,MLH2
		INC		DE
		JR		MLH1

MLH2:	LD		B,20H
MLH4:	LD		A,(DE)     ;FNAME送信
		CALL	SNDBYTE
		INC		DE
		DEC		B
		JR		NZ,MLH4
		LD		A,0DH
		CALL	SNDBYTE
		
		CALL	RCVBYTE    ;状態取得(00H=OK)
		AND		A          ;00以外ならERROR
		JP		NZ,ERR1

		CALL	RCVBYTE    ;状態取得(00H=OK)
		AND		A          ;00以外ならERROR
		JP		NZ,ERR1

		LD		HL,IBUFE
		LD		BC,0080H
MLH5:	CALL	RCVBYTE    ;読みだされたインフォメーションブロックを受信
		OUT		(0D4H),A	;8088へ送信
		LD		(HL),A
		INC		HL
		DEC		BC
		LD		A,B
		OR		C
		JR		NZ,MLH5

		CALL	RCVBYTE    ;状態取得(00H=OK)
		AND		A          ;00以外ならERROR
		JP		NZ,ERR1

		RET			       ;正常RETURN

;**************************** アプリケーション内SD-CARD操作処理 **********************
MLHCMD:
;**** HL、DE、BCレジスタを保存 ****
		PUSH	HL
		PUSH	DE
		PUSH	BC
		INC		DE
		LD		B,03H
;**** FDLコマンド ****
		LD		HL,CMD1
		CALL	CMPSTR
		JR		Z,MLHCMD2
		POP		BC
		POP		DE
		POP		HL
;**** ファイルネーム入力へ復帰 ****
		JR		MLH6

MLHCMD2:
		INC		DE
		INC		DE
		INC		DE
		LD		HL,MSG_DNAME         ;行頭に'DOS FILE:'を付けることでカーソルを移動させリターンで実行できるように
		LD		BC,MSG_DNAMEEND-MSG_DNAME
;**** FDLコマンド呼び出し ****
		CALL	DIRLIST
		AND		A          ;00以外ならERROR
;		JR		NZ,SERR
		POP		BC
		POP		DE
		POP		HL
;**** ファイルネーム入力へ復帰 ****
		JP		MLH6

;**** コマンド文字列比較 ****
CMPSTR:
		PUSH	BC
		PUSH	DE
CMP1:	LD		A,(DE)
		CP		(HL)
		JR		NZ,CMP2
		DEC		B
		JR		Z,CMP2
		CP		0Dh
		JR		Z,CMP2
		INC		DE
		INC		HL
		JR		CMP1
CMP2:	POP		DE
		POP		BC
		RET

;**** コマンドリスト ****
; 将来拡張用
CMD1:	DB		'FDL',0DH


;**************************** 0629H RDDAT 代替処理 ********************
MLDAT:
		LD		A,94H      ;DATA LOADコマンド94H
		CALL	MCMD       ;コマンドコード送信
		AND		A          ;00以外ならERROR
		JP		NZ,ERR1

		CALL	RCVBYTE    ;状態取得(00H=OK)
		AND		A          ;00以外ならERROR
		JP		NZ,ERR1

		CALL	RCVBYTE    ;状態取得(00H=OK)
		AND		A          ;00以外ならERROR
		JP		NZ,ERR1

		LD		DE,FSIZE   ;FSIZE送信
		LD		A,(DE)
		CALL	SNDBYTE
		INC		DE
		LD		A,(DE)
		CALL	SNDBYTE
		CALL	DBRCV      ;FSIZE分のデータを受信し、SADRSから格納。分割ロードの場合、直前に0436HでOPENされたファイルを対象として256バイトずつSADRSが加算されて04F8HがCALLされる。

		CALL	RCVBYTE    ;状態取得(00H=OK)
		AND		A          ;00以外ならERROR
		JP		NZ,ERR1

		RET			       ;正常RETURN

;データ受信
DBRCV:	CALL	LDINF		;STARTアドレス、転送バイト数をセット
DBRLOP:	CALL	RCVBYTE		;実データをArduinoから読み込み
		OUT		(0D4H),A	;8088へ送信
;		LD		(HL),A
		DEC		BC
		LD		A,B
		OR		C
		INC		HL
		JR		NZ,DBRLOP   ;BC=0までLOOP
		RET

;******* 代替処理用コマンドコード送信 (IN:A コマンドコード) **********
MCMD:
		CALL	SNDBYTE    ;コマンドコード送信
		CALL	RCVBYTE    ;状態取得(00H=OK)
		RET

		END
