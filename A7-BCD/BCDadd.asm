; Program to add two BCD numbers

assume cs:code, ds:data
data segment
    num1 db 25H
    num2 db 36H
    ans db ?
    carry db 00H
data ends
code segment
    start: mov ax, data 
           mov ds, ax
           mov al, num1
           mov bl, num2
           mov cl, carry
           add al, bl
           daa
           mov ans, al
           jnc here
           inc cl
    here:  mov carry, cl
           
           mov ah, 4ch
           int 21h
code ends
    end start