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


        ORG		0000H

		NOP
		LD		SP,4FFFH               ;取り敢えずスタックポインタ設定
		
		IN		A,(0E0H)               ;MZ-2000、MZ-80Bを判別して初期設定
		CP		0FFH
		JR		NZ,IO0
		LD		HL,IOTBL2000
		JR		IO1
IO0:	LD		HL,IOTBL80B
IO1:	LD		A,(HL)
		INC		HL
		LD		C,(HL)
		INC		HL
		OUT		(C),A
		INC		A
		JR		NZ,IO1
		CALL	SYOKI
		LD		A,0DH
		OUT		(0E3H),A

		JR		TENSO                   ;転送プログラムへ

SYOKI:	IN		A,(0E0H)
		CP		0FFH
		JR		NZ,SK1
		LD		A,0FFH
		JR		SK2
SK1:	LD		A,12H
SK2:	OUT		(0E0H),A
		RET

IOTBL2000:
		DEFW	0E302H
		DEFW	0E734H
		DEFW	0E774H
		DEFW	0E7B4H
		DEFW	0E600H
		DEFW	0E600H
		DEFW	0E502H
		DEFW	0E500H
		DEFW	0E402H
		DEFW	0E400H
		DEFW	0E9CFH
		DEFW	0E900H
		DEFW	0E840H
		DEFW	0F701H
		DEFW	0F600H
		DEFW	0F507H
		DEFW	0F400H
		DEFW	0EBCFH
		DEFW	0EBFFH
		
IOTBL80B:
		DEFW	0E302H
		DEFW	0E734H
		DEFW	0E774H
		DEFW	0E7B4H
		DEFW	0E600H
		DEFW	0E600H
		DEFW	0E502H
		DEFW	0E500H
		DEFW	0E402H
		DEFW	0E400H
		DEFW	0E9CFH
		DEFW	0E900H
		DEFW	0E800H
		DEFW	0EBCFH
		DEFW	0EBFFH

TENSO:                                     ;SDからの読み込みプログラムをメモリ後半に転送
		LD		HL,MARK1
		LD		DE,MARK2                   ;8000hへ転送
		LD		BC,MARK3-MARK2-1
		LDIR
		JP		MARK2                      ;8000hへジャンプ

MARK1:
		ORG		8000H

MARK2:
		LD		SP,8FFFH                   ;スタックポインタ再設定
		IN		A,(0E0H)                   ;MZ-2000、MZ-80Bを判別して読み込むべきファイルネームを切り替え
		CP		0FFH
		JR		NZ,FLG80B
FLG2000:LD		A,00H
		LD		HL,FNAME2000
		JR		FLG1
FLG80B:	LD		A,01H
		LD		HL,FNAME80B
FLG1:	LD		(FLG),A
		LD		DE,FNAME
		LD		BC,20
		LDIR
		
;**** 8255初期化 ****
;PORTC下位BITをOUTPUT、上位BITをINPUT、PORTBをINPUT、PORTAをOUTPUT
INIT:	LD		A,8AH
		OUT		(0A3H),A
;出力BITをリセット
INIT2:	LD		A,00H      ;PORTA <- 0
		OUT		(0A0H),A
		OUT		(0A2H),A   ;PORTC <- 0

START:
		LD		A,95H      ;BOOTコマンド95H
		CALL	STCD       ;コマンドコード送信
		AND		A          ;00以外ならERROR
		JP		NZ,ERR

		LD		HL,FNAME   ;ファイルネーム送信「@BOOT-x.bin」
		CALL	STFS
		AND		A          ;00以外ならERROR
		JP		NZ,ERR

		CALL	RCVBYTE    ;状態取得(00H=OK)
		AND		A          ;00以外ならERROR
		JP		NZ,ERR

		LD		A,07H
		LD		(CURX),A
		LD		A,0CH
		LD		(CURY),A
		LD		HL,MSG1    ;LOADING @BOOT-x.bin表示
		CALL	STRPR

		CALL	RCVBYTE    ;ファイルサイズ下位バイト受信
		LD		E,A
		CALL	RCVBYTE    ;ファイルサイズ上位バイト受信
		LD		D,A
		LD		HL,0000H
LOP1:	CALL	RCVBYTE    ;ファイルサイズ分データ受信
		LD		(HL),A
		INC		HL
		PUSH	HL
		XOR		A
		SBC		HL,DE
		POP		HL
		JR		NZ,LOP1
		JP		0000H      ;0000Hからスタート

ERR:	LD		A,07H
		LD		(CURX),A
		LD		A,0CH
		LD		(CURY),A
		LD		HL,MSG2    ;エラー表示
		CALL	STRPR
		JR		ERR

MSG1:	DB		'LOADING '

FNAME:	DB		'@BOOT-A MZ-2000.bin',00H
		DB		00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H
FNAME2000:
		DB		'@BOOT-A MZ-2000.bin',00H
;		DB		'@BOOT-B MZ-2000.bin',00H             ;27512ならこちらを有効にしてアセンブル
FNAME80B:
		DB		'@BOOT-A MZ-80B.bin',00H,00H
;		DB		'@BOOT-B MZ-80B.bin',00H,00H          ;27512ならこちらを有効にしてアセンブル

MSG2:	DB		'         SD ERROR          ',00H

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

;**** コマンド送信 (IN:A コマンドコード)****
STCD:	CALL	SNDBYTE    ;Aレジスタのコマンドコードを送信
		CALL	RCVBYTE    ;状態取得(00H=OK)
		RET

;**** ファイルネーム送信(IN:HL ファイルネームの先頭) ******
STFS:	LD		B,20H
STFS1:	LD		A,(HL)     ;FNAME送信
		CALL	SNDBYTE
		INC		HL
		DEC		B
		JR		NZ,STFS1
		LD		A,0DH
		CALL	SNDBYTE
		CALL	RCVBYTE    ;状態取得(00H=OK)
		RET

;V-RAM アクセスON
VRAMON:	PUSH	AF
		IN		A,(0E8H)
		PUSH	AF
		LD		A,(FLG)
		CP		01H
		JR		Z,VO1
		LD		B,0C0H
		JR		VO2
VO1:	LD		B,80H
VO2:	POP		AF
		OR		B
		OUT		(0E8H),A
		POP		AF
		RET

;V-RAMアクセスOFF
VRAMOF:	PUSH	AF
		IN		A,(0E8H)
		AND		7FH
		OUT		(0E8H),A
		POP		AF
		RET

;文字列を表示
STRPR:	LD		A,(HL)
		CP		00H
		RET		Z
		CALL	PRINT
		INC		HL
		JR		STRPR

;Aレジスタの内容をASCIIコードとしてCURX,Yの位置に表示
PRINT:	PUSH	HL
		PUSH	AF
		CALL	CALXY
		POP		AF
		CALL	VRAMON
		LD		(HL),A
		CALL	VRAMON
		LD		A,(CURX)
		INC		A
		LD		(CURX),A
		POP		HL
		RET
		
;CURX,YからV-RAMアドレスを算出
CALXY:	PUSH	DE
		PUSH	BC
		LD		HL,0D000H-28H
		LD		A,(CURY)
		INC		A
		LD		B,A
		LD		D,00H
		LD		E,28H
CALXY1:	ADD		HL,DE
		DJNZ	CALXY1
		LD		A,(CURX)
		LD		E,A
		ADD		HL,DE
		POP		BC
		POP		DE
		RET
		
FLG:	DB		00H
CURX:	DB		00H
CURY:	DB		00H

MARK3:
		END
