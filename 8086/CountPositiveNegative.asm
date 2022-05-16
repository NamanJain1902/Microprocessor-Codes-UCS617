MOV CL, 05H;
MOV BL, 00H; (-) value count
MOV DL, 00H; (+) value count
LEA SI, [1000H]; 

L1: MOV AL, [SI];
SHL AL, 01;
JNC L2; no carry means => sign bit(MSB) 0 => positive value
INC DL; runs when sign bit is 1 => negative value 
JMP L3;
L2: INC BL;
L3: INC SI;
DEC CL;
JNZ L1;
MOV [100AH], BL;
MOV [100BH], DL;

HLT           ; halt!

