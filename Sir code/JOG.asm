.MODEL small
.STACK 100H

.DATA
A dw 5
B dw 7
Sum dw ?
rem db ?
msg db "Done! hoye geche$"


MAIN PROC
    ;Initialize
    MOV AX,@DATA
    MOV DS, AX
    
    ;CODE 
    MOV AX,A
    ADD AX,B
    MOV SUM,AX
    
    ;MOV DL, AL
    ;ADD DL,48
    ;MOV AH,2
    ;INT 21h 
    
    MOV BL,10
    MOV AH,0
    DIV BL
    MOV rem,AH 
    
    MOV DL,AL
    ADD DL,48
    MOV AH,2
    INT 21H
    
    MOV DL,rem
    ADD DL,48
    MOV AH,2
    INT 21H
    
    mov dl,13
    mov ah,2
    int 21h
    mov dl,10
    mov ah,2
    int 21h
    
    mov dx, offset msg
    MOV AH, 9
    INT 21H
    
    
    
    
    
    ;DOS EXIT
    MOV AX, 4C00H
    INT 21H
    
MAIN ENDP

    END MAIN
    
    
    