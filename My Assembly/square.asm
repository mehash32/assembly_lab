include 'emu8086.inc'
.model small
.stack 100h
.data
n db 0
.code
main proc
mov ax,@data
mov ds,ax
 ;input
mov ah,1
int 21h
sub al,48
mov n,al

 mov bh,1;i=0
  ;mov ch,n
  printn 
 
  
  
 loop1:
 cmp bh,n

 
 jg exit_loop1
 mov bl,1;j=1
 
 loop2:
 
 cmp bl,n 
 ;com bl,bh
 ;com bl,ch
 jg exit_loop2
  mov ah,2
  
  mov dl,'*'
  int 21h
 
 inc bl;bl++
 ;dec ch
 jmp loop2 
 
 exit_loop2:
 
 printn
 inc bh;bh++
 jmp loop1
 
 exit_loop1:
 mov 4,ch
 int 21h 
 endp main 
 end main
 
 
 
 
 