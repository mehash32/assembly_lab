
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 
mode small
stack 100h
.data 
a dw 5
b dw 3
sum dw ?
.code 
main proc
    mov ax,dx

; add your code here

ret




