.model small
.stack 100h
.data
a db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    sub al,48 
    mov a,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    
    mov dl,a
    add dl,48
    mov ah,2
    int 21h
    
    mov ax,4c00h
    int 21h
endp main
end main
    