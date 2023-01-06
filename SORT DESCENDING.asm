# ORG 8800
	   MVI C,03

SORT:	   LXI H,8850
	   MOV D,C

LOOP:	   MOV A,M
	   INX H
	   CMP M
	   JNC SKIP
	   MOV B,M
	   MOV M,A
	   DCX H
	   MOV M,B
	   INX H

SKIP:	   DCR D
	   JNZ LOOP
	   DCR C
	   JNZ SORT
	   HLT
# ORG 8850
# DB 04,08,06
