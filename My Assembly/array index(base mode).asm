
.model small
.stack 100h
.data

num db 1,2,3,4,5,6,7,8,9,0
;um2 dw 65,66,67,68,69

.code

main proc
    mov ax,@data
    
    mov ds,ax
    
    
    
    mov cx,10
    
    xor bx,bx
     
 
     mov ah,2
     for:
     mov dl,num[bx]
     
     ;mov dx,num2[bx]
     
    ;xor dx,dx
    
     int 21h
      add dl,48
      inc bx
     ;add bx,2
     
     loop for
     
     mov ah,4ch
     int 21h
     
     main endp
end main