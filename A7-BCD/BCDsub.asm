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
           sub al, bl
           das
           jnc here
           mov bl, al
           mov al, 99H
           sub al, bl
           add al, 01H
           daa
           inc cl
    here:  mov ans, al
           mov carry, cl
           
           mov ah, 4ch
           int 21h
code ends
    end start