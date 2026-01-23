EMM		EQU		0ACH


        ORG		0000H

		LD		HL,ST1
		LD		DE,ST2
		LD		BC,ST3-ST2
		LDIR
		JP		ST2


ST1:
		ORG		C000H,ST1
ST2:
		XOR		A
		OUT		(EMM),A
		OUT		(EMM+1),A
		OUT		(EMM+2),A
		
		LD		B,12H
LOP1:	IN		A,(EMM+3)
		DJNZ	LOP1

		IN		A,(EMM+3)
		LD		E,A
		IN		A,(EMM+3)
		LD		D,A
		
		LD		B,0AH
LOP2:	IN		A,(EMM+3)
		DJNZ	LOP2

		IN		A,(EMM+3)
		LD		H,A

		XOR		A
		OUT		(EMM),A
		LD		A,H
		OUT		(EMM+1),A
		XOR		A
		OUT		(EMM+2),A

		LD		HL,0000H
EMLOP:	IN		A,(EMM+3)
		LD		(HL),A
		INC		HL
		DEC		DE
		LD		A,D
		OR		E
		JR		NZ,EMLOP
		JP		0000H
ST3:

		END
