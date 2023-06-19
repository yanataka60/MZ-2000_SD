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
		JP		INIT

		ORG		7E00H

;**** 8255初期化 ****
;PORTC下位BITをOUTPUT、上位BITをINPUT、PORTBをINPUT、PORTAをOUTPUT
INIT:	LD		SP,0FFFFH
		LD		A,8AH
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

		LD		A,1CH
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

ERR:	LD		A,1CH
		LD		(CURX),A
		LD		A,0CH
		LD		(CURY),A
		LD		HL,MSG2    ;エラー表示
		CALL	STRPR
		JR		ERR

MSG1:	DB		'LOADING '

FNAME	DB		'@BOOT-A.bin',00H,00H,00H,00H,00H,00H,00H,00H,00H
;FNAME	DB		'@BOOT-B.bin',00H,00H,00H,00H,00H,00H,00H,00H,00H
		DB		00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H

MSG2:	DB		'      SD ERROR      ',00H

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
		OR		0C0H
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
		LD		HL,0D000H-50H
		LD		A,(CURY)
		INC		A
		LD		B,A
		LD		D,00H
		LD		E,50H
CALXY1:	ADD		HL,DE
		DJNZ	CALXY1
		LD		A,(CURX)
		LD		E,A
		ADD		HL,DE
		POP		BC
		POP		DE
		RET
		
CURX:	DB		00H
CURY:	DB		00H

		ORG		7FFFH
		DB		00H
		END
