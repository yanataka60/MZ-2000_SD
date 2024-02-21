LDINF		EQU		0602H		;START�A�h���X�A�t�@�C���T�C�Y�Z�b�g
GETKY		EQU		0962H		;�L�[�{�[�g����1��������A���W�X�^�Ɏ�荞��
PRNT		EQU		09A0H		;A���W�X�^��ASCII�R�[�h��\��
DSPNAM		EQU		09E7H		;�������݂��Ă���t�@�C���l�[����\��
MSG			EQU		09FBH		;DE���W�X�^�̎����A�h���X�̕�����\��
LETLN		EQU		0AB6H		;�s��ւ��Ď��̍s�̐擪�ɃJ�[�\���ړ�
GETL		EQU		0F09H		;�L�[�{�[�h����1�s���� DE<-BUFF

WRIMES		EQU		093BH		;'WRITING '
KNUMBS		EQU		0F07H		;GETL�œ��͉\�ő啶����
DSPX		EQU		13A8H		;�J�[�\�������ʒu
IBUFE		EQU		1455H		;�C���t�H���[�V�����u���b�N�擪�Ԓn
FNAME		EQU		1456H		;�t�@�C����
FSIZE		EQU		1467H		;�t�@�C���T�C�Y
SADRS		EQU		1469H		;START�Ԓn
LBUF		EQU		3000H		;�s���̓o�b�t�@
MBUF		EQU		3080H		;DOS�t�@�C���l�[�����͗p�s���̓o�b�t�@

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

ENT:
		ORG		09000H

		JP		INIT3
;******************** MONITOR CMT���[�`����� *************************************
ENT1:	JP		MSHED
ENT2:	JP		MSDAT
ENT3:	JP		MLHED
ENT4:	JP		MLDAT
		
;**** 8255������ ****
;PORTC����BIT��OUTPUT�A���BIT��INPUT�APORTB��INPUT�APORTA��OUTPUT
INIT:	LD		A,8AH
		OUT		(0A3H),A
;�o��BIT�����Z�b�g
INIT2:	LD		A,00H      ;PORTA <- 0
		OUT		(0A0H),A
		OUT		(0A2H),A   ;PORTC <- 0
		RET

INIT3:	LD		A,0C3H		;WRINF��փ��[�`���փW�����v
		LD		(05CEH),A
		LD		HL,ENT1
		LD		(05CEH+1),HL

		LD		A,0C3H		;WRDAT��փ��[�`���փW�����v
		LD		(05FBH),A
		LD		HL,ENT2
		LD		(05FBH+1),HL

		LD		A,0C3H		;RDINF��փ��[�`���փW�����v
		LD		(060AH),A
		LD		HL,ENT3
		LD		(060AH+1),HL

		LD		A,0C3H		;RDDAT��փ��[�`���փW�����v
		LD		(0629H),A
		LD		HL,ENT4
		LD		(0629H+1),HL

		JP		0000H

;**** DIRLIST�{�� (HL=�s���ɕt�����镶����̐擪�A�h���X BC=�s���ɕt�����镶����̒���) ****
;****              �߂�l A=�G���[�R�[�h ****
DIRLIST:
		LD		A,83H      ;DIRLIST�R�}���h83H�𑗐M
		CALL	MCMD	   ;�R�}���h�R�[�h���M
		AND		A          ;00�ȊO�Ȃ�ERROR
		RET		NZ
		
		PUSH	BC
		LD		B,21H
STLT1:	LD		A,(DE)
		CP		0DH
		JR		NZ,STLT2
		LD		A,00H
STLT2:	CALL	SNDBYTE           ;�y�[�W�w���𑗐M
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
DL2:	CALL	RCVBYTE           ;'00H'����M����܂ł���s�Ƃ���
		CP		00H
		JR		Z,DL3
		CP		0FFH              ;'0FFH'����M������I��
		JR		Z,DL4
		CP		0FEH              ;'0FEH'����M������ꎞ��~���Ĉꕶ�����͑҂�
		JR		Z,DL5
		LD		(HL),A
		INC		HL
		JR		DL2
DL3:	LD		DE,LBUF           ;'00H'����M�������s����\�����ĉ��s
		CALL	MSG
		CALL	LETLN
		POP		BC
		POP		HL
		JR		DL1
DL4:	CALL	RCVBYTE           ;��Ԏ擾(00H=OK)
		POP		BC
		POP		HL
		RET

DL5:	LD		DE,MSG_KEY1        ;HIT ANT KEY�\��
		CALL	MSG
		LD		A,82H
		CALL	PRNT
		LD		DE,MSG_KEY2        ;HIT ANT KEY�\��
		CALL	MSG
		CALL	LETLN
DL6:	CALL	GETKY              ;1�������͑҂�
		CP		00H
		JR		Z,DL6
		CP		0BH               ;SHIFT+BREAK�őł��؂�
		JR		Z,DL7
		CP		02H               ;�J�[�\�����őł��؂�
		JR		Z,DL9
		CP		42H               ;�uB�v�őO�y�[�W
		JR		Z,DL8
		LD		A,00H             ;����ȊO�Ōp��
		JR		DL8
DL9:	LD		A,02H            ;�J�[�\�����őł��؂����Ƃ��ɃJ�[�\��2�s���
		CALL	PRNT
		LD		A,02H
		CALL	PRNT
DL7:	LD		A,0FFH            ;0FFH���f�R�[�h�𑗐M
DL8:	CALL	SNDBYTE
		CALL	LETLN
		JR		DL2
;		RET
		
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

LOOP:	PUSH	BC			;8088����̃f�[�^�҂����[�v
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
		
;*********************** 05CBH WRINF ��֏��� ************
MSHED:
		CALL	INIT
		LD		A,91H      ;HEADER SAVE�R�}���h91H
		CALL	MCMD       ;�R�}���h�R�[�h���M
		AND		A          ;00�ȊO�Ȃ�ERROR
		JP		NZ,ERR1

		LD		HL,IBUFE	;�C���t�H���[�V�����u���b�N
		LD		BC,0080H
		CALL	WTAPE		;�C���t�H���[�V�����u���b�NSD��������
		LD		DE,WRIMES	;WRITING���b�Z�[�W�\��
		CALL	DSPNAM

		CALL	RCVBYTE    ;��Ԏ擾(00H=OK)
		AND		A          ;00�ȊO�Ȃ�ERROR
		JP		NZ,ERR1
		RET

WTAPE:	PUSH	BC
		PUSH	HL
WTAP1:	IN		A,(0D4H)	;8088����f�[�^���
		LD		(HL),A		;�C���t�H���[�V�����u���b�N�ɏ�������
		CALL	SNDBYTE		;Arduino��1Byte���M
		INC		HL
		DEC		BC
		LD		A,B
		OR		C
		JR		NZ,WTAP1
		IN		A,(0D4H)	;Check Sum���ǂݔ�΂�
		CALL	LOOP
		IN		A,(0D4H)	;Check Sum���ǂݔ�΂�
		CALL	LOOP
		POP		HL
		POP		BC

;8088���瑗���Ă���2��ڏ������ݗp�f�[�^��ǂݔ�΂�
		PUSH	BC
		PUSH	HL
WTAP5:	IN		A,(0D4H)	;8088����f�[�^���ǂݔ�΂�
		CALL	LOOP
		INC		HL
		DEC		BC
		LD		A,B
		OR		C
		JR		NZ,WTAP5
		IN		A,(0D4H)	;Check Sum���ǂݔ�΂�
		CALL	LOOP
		IN		A,(0D4H)	;Check Sum���ǂݔ�΂�
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
		LD		DE,MSG99   ;���̑�ERROR
ERRMSG:	CALL	MSG
		SCF
		RET

;A���W�X�^����4�r�b�g�̒l��16�i����\��ASCII������ɕϊ�
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
		

;******************** 05F8H WRDAT ��֏��� **********************
MSDAT:
		LD		A,92H      ;DATA SAVE�R�}���h92H
		CALL	MCMD       ;�R�}���h�R�[�h���M
		AND		A          ;00�ȊO�Ȃ�ERROR
		JP		NZ,ERR1

		LD		HL,FSIZE   ;FSIZE���M
		LD		A,(HL)
		CALL	SNDBYTE
		INC		HL
		LD		A,(HL)
		CALL	SNDBYTE

		CALL	RCVBYTE    ;��Ԏ擾(00H=OK)
		AND		A          ;00�ȊO�Ȃ�ERROR
		JP		NZ,ERR1

		CALL	LDINF		;START�A�h���X�A�]���o�C�g�����Z�b�g
		CALL	WDTAPE		;���f�[�^��SD�ɏ�������

		RET

WDTAPE:	PUSH	BC
		PUSH	HL
WDTAP1:	IN		A,(0D4H)	;8088����f�[�^���
		CALL	SNDBYTE		;Arduino�֑��M
		INC		HL
		DEC		BC
		LD		A,B
		OR		C
		JR		NZ,WDTAP1
		IN		A,(0D4H)	;Check Sum���ǂݔ�΂�
		CALL	LOOP
		IN		A,(0D4H)	;Check Sum���ǂݔ�΂�
		CALL	LOOP
		POP		HL
		POP		BC

		PUSH	BC
		PUSH	HL
WDTAP5:	IN		A,(0D4H)	;8088����f�[�^���ǂݔ�΂�
		CALL	LOOP
		INC		HL
		DEC		BC
		LD		A,B
		OR		C
		JR		NZ,WDTAP5
		IN		A,(0D4H)	;Check Sum���ǂݔ�΂�
		CALL	LOOP
		IN		A,(0D4H)	;Check Sum���ǂݔ�΂�
		CALL	LOOP
		XOR		A
		LD		A,00H
		POP		HL
		POP		BC

		RET

;************************** 060AH RDINF ��֏��� *****************
MLHED:
		CALL	INIT

		LD		B,00H      ;LBUF��0DH�Ŗ��߃t�@�C���l�[�����w�肳��Ȃ��������Ƃɂ���AMBUF��0DH����
		LD		DE,LBUF
		LD		A,0DH
MLH0:	LD		(DE),A
		INC		DE
		DJNZ	MLH0

		LD		A,03H          ;��s�����N���A���邽��3�����폜�A37�����o��
		LD		(DSPX),A
		LD		A,07H			;DELETE
		CALL	PRNT
		LD		A,07H			;DELETE
		CALL	PRNT
		LD		A,07H			;DELETE
		CALL	PRNT
MLH6:	LD		DE,MSG_DNAME   ;'DOS FILE:'
		CALL	MSG
		LD		A,09H          ;�J�[�\����9�����ڂɖ߂�
		LD		(DSPX),A

		LD		DE,MBUF    ;DOS�t�@�C���l�[������͂���B
		LD		A,39
		LD		(KNUMBS),A
		CALL	GETL
		
		LD		DE,MBUF+9
		
		LD		A,(DE)
;**** �t�@�C���l�[���̐擪��'*'�Ȃ�g���R�}���h�����ֈڍs ****
		CP		'*'
		JR		Z,MLHCMD

		LD		A,93H      ;HEADER LOAD�R�}���h93H
		CALL	MCMD       ;�R�}���h�R�[�h���M
		AND		A          ;00�ȊO�Ȃ�ERROR
		JP		NZ,ERR1

MLH1:
		LD		A,(DE)
		CP		20H                 ;�s���̃X�y�[�X���t�@�C���l�[���܂œǂݔ�΂�
		JR		NZ,MLH2
		INC		DE
		JR		MLH1

MLH2:	LD		B,20H
MLH4:	LD		A,(DE)     ;FNAME���M
		CALL	SNDBYTE
		INC		DE
		DEC		B
		JR		NZ,MLH4
		LD		A,0DH
		CALL	SNDBYTE
		
		CALL	RCVBYTE    ;��Ԏ擾(00H=OK)
		AND		A          ;00�ȊO�Ȃ�ERROR
		JP		NZ,ERR1

		CALL	RCVBYTE    ;��Ԏ擾(00H=OK)
		AND		A          ;00�ȊO�Ȃ�ERROR
		JP		NZ,ERR1

		LD		HL,IBUFE
		LD		BC,0080H
MLH5:	CALL	RCVBYTE    ;�ǂ݂����ꂽ�C���t�H���[�V�����u���b�N����M
		OUT		(0D4H),A	;8088�֑��M
		LD		(HL),A
		INC		HL
		DEC		BC
		LD		A,B
		OR		C
		JR		NZ,MLH5

		CALL	RCVBYTE    ;��Ԏ擾(00H=OK)
		AND		A          ;00�ȊO�Ȃ�ERROR
		JP		NZ,ERR1

		RET			       ;����RETURN

;**************************** �A�v���P�[�V������SD-CARD���쏈�� **********************
MLHCMD:
;**** HL�ADE�ABC���W�X�^��ۑ� ****
		PUSH	HL
		PUSH	DE
		PUSH	BC
		INC		DE
		LD		B,03H
;**** FDL�R�}���h ****
		LD		HL,CMD1
		CALL	CMPSTR
		JR		Z,MLHCMD2
		POP		BC
		POP		DE
		POP		HL
;**** �t�@�C���l�[�����͂֕��A ****
		JR		MLH6

MLHCMD2:
		INC		DE
		INC		DE
		INC		DE
		LD		HL,MSG_DNAME         ;�s����'DOS FILE:'��t���邱�ƂŃJ�[�\�����ړ��������^�[���Ŏ��s�ł���悤��
		LD		BC,MSG_DNAMEEND-MSG_DNAME
;**** FDL�R�}���h�Ăяo�� ****
		CALL	DIRLIST
		AND		A          ;00�ȊO�Ȃ�ERROR
;		JR		NZ,SERR
		POP		BC
		POP		DE
		POP		HL
;**** �t�@�C���l�[�����͂֕��A ****
		JP		MLH6

;**** �R�}���h�������r ****
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

;**** �R�}���h���X�g ****
; �����g���p
CMD1:	DB		'FDL',0DH


;**************************** 0629H RDDAT ��֏��� ********************
MLDAT:
		LD		A,94H      ;DATA LOAD�R�}���h94H
		CALL	MCMD       ;�R�}���h�R�[�h���M
		AND		A          ;00�ȊO�Ȃ�ERROR
		JP		NZ,ERR1

		CALL	RCVBYTE    ;��Ԏ擾(00H=OK)
		AND		A          ;00�ȊO�Ȃ�ERROR
		JP		NZ,ERR1

		CALL	RCVBYTE    ;��Ԏ擾(00H=OK)
		AND		A          ;00�ȊO�Ȃ�ERROR
		JP		NZ,ERR1

		LD		DE,FSIZE   ;FSIZE���M
		LD		A,(DE)
		CALL	SNDBYTE
		INC		DE
		LD		A,(DE)
		CALL	SNDBYTE
		CALL	DBRCV      ;FSIZE���̃f�[�^����M���ASADRS����i�[�B�������[�h�̏ꍇ�A���O��0436H��OPEN���ꂽ�t�@�C����ΏۂƂ���256�o�C�g����SADRS�����Z�����04F8H��CALL�����B

		CALL	RCVBYTE    ;��Ԏ擾(00H=OK)
		AND		A          ;00�ȊO�Ȃ�ERROR
		JP		NZ,ERR1

		RET			       ;����RETURN

;�f�[�^��M
DBRCV:	CALL	LDINF		;START�A�h���X�A�]���o�C�g�����Z�b�g
DBRLOP:	CALL	RCVBYTE		;���f�[�^��Arduino����ǂݍ���
		OUT		(0D4H),A	;8088�֑��M
;		LD		(HL),A
		DEC		BC
		LD		A,B
		OR		C
		INC		HL
		JR		NZ,DBRLOP   ;BC=0�܂�LOOP
		RET

;******* ��֏����p�R�}���h�R�[�h���M (IN:A �R�}���h�R�[�h) **********
MCMD:
		CALL	SNDBYTE    ;�R�}���h�R�[�h���M
		CALL	RCVBYTE    ;��Ԏ擾(00H=OK)
		RET

		END
