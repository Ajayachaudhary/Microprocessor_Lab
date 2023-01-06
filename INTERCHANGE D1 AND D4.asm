	   LXI H,3100
	   MOV A,M
	   ANI 12
	   CPI 00
	   JNZ L1
	   HLT

L1:	   MOV A,M
	   ANI 12
	   CPI 12
	   JNZ L2
	   HLT

L2:	   MOV A,M
	   XRI 12
	   INX H
	   MOV M,A
	   HLT
# ORG 3100H
# DB 02H
