	   LXI H,8850
	   MVI C,10
	   MVI B,00

LOOP:	   MOV A,M

D7:	   RLC
	   JNC D6
	   INR B

D6:	   RLC
	   JNC D5
	   INR B

D5:	   RLC
	   JNC D4
	   INR B

D4:	   RLC
	   JNC D1
	   INR B

D1:	   DCR C
	   INX H
	   JNZ LOOP
	   MOV A,B
	   STA 8860
	   HLT
# ORG 8850
# DB F0,FF,2,3,4,5,6,FF,8,9
