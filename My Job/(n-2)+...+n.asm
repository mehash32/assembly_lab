
.model small
.stack 100h

.data

temp db 0
a db 0
sum db 0 
num1 db ?
num2 db ?

.code

main proc
    mov ax,@data
    mov ds,ax
    
    
  again: 
    mov ah,1
    int 21h
    mov bl,10
    cmp al,13
    je work
    sub al,48
    mov temp,al
    mov al,a
    mul bl
    add al,temp
    mov a,al
    jmp again
    
  work:
    
    mov cl,a
    add sum,cl
    dec a
    dec a
    cmp a,1
    jge work
    cmp a,0
    jmp exit
    
    
   exit: 
     
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 

    MOV AH,0 
    MOV AL,sum
    MOV BL,10
    DIV BL
    MOV num2,AH 
    
    MOV AH,0
    MOV BL,10
    DIV BL
    MOV num1,AH
    
    MOV DL,AL
    ADD DL,48
    MOV AH,2
    INT 21H
    
    MOV DL,num1
    ADD DL,48
    MOV AH,2
    INT 21H
    
    MOV DL,num2
    ADD DL,48
    MOV AH,2
    INT 21H
    
    
    
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN