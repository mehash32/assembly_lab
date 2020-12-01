.MODEL SMALL
.STACK 100H

.DATA 
    ARRA DB 10 DUB (?)
    FLAG DB 1
    
    NUM DB ? 
    
    FIRST DB 0
    LAST DB ?   
    
    PALINDROME DW "Palindrome$"
    NOTPALINDROME DW "Not Palindrome$"
    
.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 33
    SUB AL,48
    MOV NUM,AL
    MOV FIRST,0
    
    LEA DI,ARRA 
    XOR CX,CX
    MOV CL,NUM
    
INPUT:
    MOV AH,1
    INT 33
    SUB AL,48
    
    MOV [DI],AL 
    INC DI
    LOOP INPUT
    
    DEC DI
    
    LEA SI,ARRA
    
    
COMPARE:  
    MOV AL,ARRA[DI]
    MOV BL,ARRA[SI]
    CMP AL,BL
    JNE NOTPALIN
    
    INC SI
    DEC DI
    CMP SI,DI
    JLE COMPARE
    
    JMP PALIN
    
NOTPALIN:
    LEA DX,NOTPALINDROME
    MOV AH,9
    INT 33
    
    JMP EXIT
    
PALIN:
    LEA DX,PALINDROME
    MOV AH,9
    INT 33    
    
    
EXIT:    
    
    MOV AH,4CH
    INT 33
    
    MAIN ENDP
END MAIN