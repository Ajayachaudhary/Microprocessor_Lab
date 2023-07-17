	   LXI H,3000
	   LXI D,4000
	   MVI C,03

L1:	   MOV A,M
	   CPI 0F
	   MVI A,00
	   MOV B,M
	   JC L2
	   JMP NEXT

L2:	   ADD M
	   DCR B
	   JNZ L2
	   STAX D
	   INX D
	   DCR C
	   JNZ NEXT
	   HLT

NEXT:	   INX H
	   JMP L1

#ORG 3000H
#DB 02H,FFH,03H
