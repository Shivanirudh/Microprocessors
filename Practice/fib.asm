;16. Write an ALP using 8086 to find Fibonacci series of a given number.

assume ds:data, cs:code
data segment
    org 00H
    num db 0AH
    org 10H
    vals db ?
data ends
code segment
    start: mov ax, data
           mov ds, ax

           mov si, offset vals
           mov cl, num
           sub cl, 02H
           mov al, 01H
           mov [si], al
           inc si
           mov [si], al
    here:  mov al, [si-1]
           add al, [si]
           inc si
           mov [si], al
           dec cl
           jnz here

    exit:  mov ah, 4ch
           int 21h
code ends
    end start
