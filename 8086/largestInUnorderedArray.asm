MOV CL, 0AH;
MOV BL, 00H;
LEA SI, [1000H];
MOV AX, [SI];
INC SI;
DEC CL;

L1: CMP AX, [SI];
    JNC L2;
        MOV AX, [SI];
    L2: INC SI;
    DEC CL;
JNZ L1;
MOV [1020], AX;

HLT;




MOV BX,06H 
MOV CL,05H;
INC BX
MOV AX,BX;
DEC CL

BACK:INC BX

INC BX

CMP AX,BX

JNC Next

MOV AX,BX

Next:DEC CL
JNZ Back
MOV [1020H],AX
