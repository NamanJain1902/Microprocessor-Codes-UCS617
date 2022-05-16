MOV CL, 05H;
MOV BL, 00H;
MOV DL, 00H;
LEA SI, [1000H]; 

L1: MOV AL, [SI];
SHL AL, 01;
JNC L2; no carry means sign bit 0, means positive
INC DL; D2 is storing negative numbers  
JMP L3;
L2: INC BL;
L3: INC SI;
DEC CL;
JNZ L1;
MOV [100AH], BL;
MOV [100BH], DL;

HLT           ; halt!

