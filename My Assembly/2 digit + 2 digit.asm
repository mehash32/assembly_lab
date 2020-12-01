.MODEL SMALL
.STACK 100H

.DATA
A DB ?
B DB ?
SUM DB ? 

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    ;GET A
    MOV AH,1
    INT 21H
    
    SUB AL,48
    MOV DL,10
    MUL DL
    MOV A,AL
    
    MOV AH,1
    INT 21H
    
    SUB AL,48
    ADD AL,A
    MOV A,AL
    
    ;NEWLINE
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    
    ;GET B
    MOV AH,1
    INT 21H
    
    SUB AL,48 
    MOV DL,10
    MUL DL
    MOV B,AL
    
    MOV AH,1
    INT 21H
    SUB AL,48
    ADD AL,B
    MOV B,AL 
    
    
    ;ADD A,B
    MOV AL,A
    ADD AL,B
    MOV SUM,AL
    
    
    ;NEWLINE
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    
    ;PRINT SUM
    MOV AH,0
    MOV DL,100
    MOV AL,SUM
    DIV DL
    
    MOV A,AH     ;remainder ah theke a er moddhe nilam
    ;ADD AL,48
    MOV DL,AL
    ADD DL,48
    MOV AH,2
    INT 21H
    
    MOV AL,A ;remainder akhon al er moddhe karon dl diye vag korbo
    MOV AH,0 ;  ah k faka kore dilam
    MOV DL,10
    DIV DL
    
    ADD AL,48
    ADD AH,48   
    
    MOV A,AH   
    
    MOV DL,AL
    MOV AH,2
    INT 21H
    
    MOV DL,A
    INT 21H
    
    
    
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN