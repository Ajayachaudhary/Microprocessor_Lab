	   MVI B,02
	   MVI C,00
	   LXI H,3100

L5:	   MOV A,M
	   RLC
	   JNC L1
	   INR C

L1:	   RLC
	   JNC L2
	   INR C

L2:	   RLC
	   JNC L3
	   INR C

L3:	   RLC
	   JNC L4
	   INR C

L4:	   INX H
	   DCR B
	   JNZ L5
	   INX H
	   MOV M,C
	   HLT
# ORG 3100H
# DB 30H,10H
