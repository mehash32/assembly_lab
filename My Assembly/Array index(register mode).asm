 include 'emu8086.inc'
 .model small
 .stack 100h
 .data
 
 number db 6,9,6,8,1,2,3,4,5,7
 number2 dw 65,66,67,68,69
 
 .code
 main proc
    
    mov ax,@data
    mov ds,ax
    
    lea si,number
    mov cx,10
    mov ah,2
    
     ;array index(register mode)
    
     for:
    mov dl,[si]
    add dl,48
    int 21h
    add si,1
     
    printn
    
    
    
loop for     
    
    
    
    
    
     mov ah,4ch
    int 21h
    main endp

 end main