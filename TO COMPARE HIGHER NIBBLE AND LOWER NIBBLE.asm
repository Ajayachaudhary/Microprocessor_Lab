	   MVI B,05
	   MVI C,00
	   LXI H,3100

L1:	   MOV A,M
	   ANI 0FH
	   MOV D,A
	   MOV A,M
	   ANI F0H
	   RLC 
	   RLC
	   RLC
	   RLC
	   CMP D
	   JC L2
	   JZ L2
	   INR C

L2:	   INX H
	   DCR B
	   JNZ L1
	   MOV M,C
	   HLT
# ORG 3100H
# DB 34H,83,46H,F4H,23H
