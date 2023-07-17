	   LXI H,2000
	   LXI D,4000
	   MVI C,2

LOOP:	   MOV A,M
	   ANI 12
	   CPI 00
	   JZ L1
	   CPI 12
	   JZ L1
	   MOV A,M
	   XRI 12
	   JMP COPY

L1:	   MOV A,M
	   JMP COPY

COPY:	   STAX D
	   INX H
	   INX D
	   DCR C
	   JNZ LOOP
	   HLT
# ORG 2000
# DB A6,B4
