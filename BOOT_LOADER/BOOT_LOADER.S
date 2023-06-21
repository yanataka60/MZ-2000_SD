;0A0H PORTA ���M�f�[�^(����4�r�b�g)
;0A1H PORTB ��M�f�[�^(8�r�b�g)
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
;0A3H �R���g���[�����W�X�^


        ORG		0000H

		NOP
		LD		SP,4FFFH               ;��芸�����X�^�b�N�|�C���^�ݒ�
		
		IN		A,(0E0H)               ;MZ-2000�AMZ-80B�𔻕ʂ��ď����ݒ�
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

		JR		TENSO                   ;�]���v���O������

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

TENSO:                                     ;SD����̓ǂݍ��݃v���O�������������㔼�ɓ]��
		LD		HL,MARK1
		LD		DE,MARK2                   ;8000h�֓]��
		LD		BC,MARK3-MARK2-1
		LDIR
		JP		MARK2                      ;8000h�փW�����v

MARK1:
		ORG		8000H

MARK2:
		LD		SP,8FFFH                   ;�X�^�b�N�|�C���^�Đݒ�
		IN		A,(0E0H)                   ;MZ-2000�AMZ-80B�𔻕ʂ��ēǂݍ��ނׂ��t�@�C���l�[����؂�ւ�
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
		
;**** 8255������ ****
;PORTC����BIT��OUTPUT�A���BIT��INPUT�APORTB��INPUT�APORTA��OUTPUT
INIT:	LD		A,8AH
		OUT		(0A3H),A
;�o��BIT�����Z�b�g
INIT2:	LD		A,00H      ;PORTA <- 0
		OUT		(0A0H),A
		OUT		(0A2H),A   ;PORTC <- 0

START:
		LD		A,95H      ;BOOT�R�}���h95H
		CALL	STCD       ;�R�}���h�R�[�h���M
		AND		A          ;00�ȊO�Ȃ�ERROR
		JP		NZ,ERR

		LD		HL,FNAME   ;�t�@�C���l�[�����M�u@BOOT-x.bin�v
		CALL	STFS
		AND		A          ;00�ȊO�Ȃ�ERROR
		JP		NZ,ERR

		CALL	RCVBYTE    ;��Ԏ擾(00H=OK)
		AND		A          ;00�ȊO�Ȃ�ERROR
		JP		NZ,ERR

		LD		A,07H
		LD		(CURX),A
		LD		A,0CH
		LD		(CURY),A
		LD		HL,MSG1    ;LOADING @BOOT-x.bin�\��
		CALL	STRPR

		CALL	RCVBYTE    ;�t�@�C���T�C�Y���ʃo�C�g��M
		LD		E,A
		CALL	RCVBYTE    ;�t�@�C���T�C�Y��ʃo�C�g��M
		LD		D,A
		LD		HL,0000H
LOP1:	CALL	RCVBYTE    ;�t�@�C���T�C�Y���f�[�^��M
		LD		(HL),A
		INC		HL
		PUSH	HL
		XOR		A
		SBC		HL,DE
		POP		HL
		JR		NZ,LOP1
		JP		0000H      ;0000H����X�^�[�g

ERR:	LD		A,07H
		LD		(CURX),A
		LD		A,0CH
		LD		(CURY),A
		LD		HL,MSG2    ;�G���[�\��
		CALL	STRPR
		JR		ERR

MSG1:	DB		'LOADING '

FNAME:	DB		'@BOOT-A MZ-2000.bin',00H
		DB		00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H
FNAME2000:
		DB		'@BOOT-A MZ-2000.bin',00H
;		DB		'@BOOT-B MZ-2000.bin',00H             ;27512�Ȃ炱�����L���ɂ��ăA�Z���u��
FNAME80B:
		DB		'@BOOT-A MZ-80B.bin',00H,00H
;		DB		'@BOOT-B MZ-80B.bin',00H,00H          ;27512�Ȃ炱�����L���ɂ��ăA�Z���u��

MSG2:	DB		'         SD ERROR          ',00H

;**** 1BYTE��M ****
;��MDATA��A���W�X�^�ɃZ�b�g���ă��^�[��
RCVBYTE:
		CALL	F1CHK      ;PORTC BIT7��1�ɂȂ�܂�LOOP
		IN		A,(0A1H)   ;PORTB -> A
		PUSH 	AF
		LD		A,05H
		OUT		(0A3H),A    ;PORTC BIT2 <- 1
		CALL	F2CHK      ;PORTC BIT7��0�ɂȂ�܂�LOOP
		LD		A,04H
		OUT		(0A3H),A    ;PORTC BIT2 <- 0
		POP 	AF
		RET
		
;**** 1BYTE���M ****
;A���W�X�^�̓��e��PORTA����4BIT��4BIT�����M
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

;**** 4BIT���M ****
;A���W�X�^����4�r�b�g�𑗐M����
SND4BIT:
		OUT		(0A0H),A
		LD		A,05H
		OUT		(0A3H),A    ;PORTC BIT2 <- 1
		CALL	F1CHK      ;PORTC BIT7��1�ɂȂ�܂�LOOP
		LD		A,04H
		OUT		(0A3H),A    ;PORTC BIT2 <- 0
		CALL	F2CHK
		RET
		
;**** BUSY��CHECK(1) ****
; 82H BIT7��1�ɂȂ�܂�LOP
F1CHK:	IN		A,(0A2H)
		AND		80H        ;PORTC BIT7 = 1?
		JR		Z,F1CHK
		RET

;**** BUSY��CHECK(0) ****
; 82H BIT7��0�ɂȂ�܂�LOOP
F2CHK:	IN		A,(0A2H)
		AND		80H        ;PORTC BIT7 = 0?
		JR		NZ,F2CHK
		RET

;**** �R�}���h���M (IN:A �R�}���h�R�[�h)****
STCD:	CALL	SNDBYTE    ;A���W�X�^�̃R�}���h�R�[�h�𑗐M
		CALL	RCVBYTE    ;��Ԏ擾(00H=OK)
		RET

;**** �t�@�C���l�[�����M(IN:HL �t�@�C���l�[���̐擪) ******
STFS:	LD		B,20H
STFS1:	LD		A,(HL)     ;FNAME���M
		CALL	SNDBYTE
		INC		HL
		DEC		B
		JR		NZ,STFS1
		LD		A,0DH
		CALL	SNDBYTE
		CALL	RCVBYTE    ;��Ԏ擾(00H=OK)
		RET

;V-RAM �A�N�Z�XON
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

;V-RAM�A�N�Z�XOFF
VRAMOF:	PUSH	AF
		IN		A,(0E8H)
		AND		7FH
		OUT		(0E8H),A
		POP		AF
		RET

;�������\��
STRPR:	LD		A,(HL)
		CP		00H
		RET		Z
		CALL	PRINT
		INC		HL
		JR		STRPR

;A���W�X�^�̓��e��ASCII�R�[�h�Ƃ���CURX,Y�̈ʒu�ɕ\��
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
		
;CURX,Y����V-RAM�A�h���X���Z�o
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