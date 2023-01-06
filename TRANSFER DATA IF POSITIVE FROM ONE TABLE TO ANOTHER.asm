	   LXI H,8850
	   MOV C,M
	   DCR C
	   INX H
	   MOV A,M

L1:	   INX H
	   CMP M
	   JC L2
	   MOV A,M

L2:	   DCR C
	   JNZ L1
	   STA 8870
	   HLT
# ORG 8850H
# DB 05H,01H,02H,03H,04H,05H
