 INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.DATA
  NUM DB 3 (?)
  NUM2 DB 3 (?)
  A DB 0
  B DB 0

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    xor bx,bx
    mov cx,3
    
    mov ah,1
    
    for:
     int 21h
     SUB AL,48
     mov NUM[bx],al
     inc bx
     MOV AL,0
     
     loop for
     PRINTN
     
     xor bx,bx
    mov cx,3
    
    mov ah,1
    
    for2:
     int 21h
     SUB AL,48
     mov NUM2[bx],al
     inc bx
      MOV AL,0
     loop for2
     
     
     
      xor bx,bx
    mov cx,3
    
     PRINTN
    
    for3:
     MOV AL,NUM[BX]
     mov DL,NUM2[BX] 
     OR AL,DL
     inc bx
     MOV AH,2
     ADD AL,48
     MOV DL,AL
     INT 21H
         
     MOV DL,0
     MOV AL,0
     loop for3
     
    
     
      
    MOV AH,4CH
    INT 21H
ENDP MAIN
