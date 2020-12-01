.model small
.stack 100h
.data
msg1 db "enter first number: $"
 msg2 db "enter second number: $"
 msg3 db "sum is:$"
 no1 db 0
 no2 db 0
 sum db 0
 rem db 0
 .code
 mov ax,@data
 mov ds, ax
 ;print msg 1
 mov dx,offset msg1
 mov ah,9h
 int 21h
  ;read input 1
  mov ah,01h
  int 21h
  sub al,48
  mov no1,al
  ;print new line
  mov dl,10
  mov ah,02h
  int 21h
  ;print msg 1
 mov dx,offset msg2
 mov ah,9h
 int 21h
  ;read inpur no2
  mov  ah,01h
  int 21h
  sub al,48
  mov no2,al 
  ;print new line
  mov dl,10
  mov ah,2h
  int 21h
  ;print msg3
  mov dx,offset msg3
  mov ah,09h
  int 21h
   ;sum
   mov dl,no1
   add dl,no2
   mov sum,dl
   ;clar ah to use for
   mov ah,00
   mov al,sum
   mov bl,10
   div bl
   ;mov reminder to rem
   mov rem,ah
   ;to print al,need to move al to dl
   mov dl,al
   add dl,48
   mov ah,2h
   int 21h
   ; print reminder
   mov dl,rem
   add dl,48
   mov ah,2h
   int 21h
   mov ax,400h
   int 21h
   end
   
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  



