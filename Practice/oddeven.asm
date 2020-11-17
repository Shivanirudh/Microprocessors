;4. Write an ALP using 8086 to find the number of ODD and EVEN numbers in a list.

assume ds:data, cs:code
data segment
    org 00H
    source db 00H, 11H, 22H, 33H, 44H, 55H, 66H, 77H, 88H, 99H
    org 10H
    eve db 00H
    odd db 00H
    org 20H
    count db 0AH
data ends
code segment
    start: mov ax, data
           mov ds, ax

           mov si, offset source
           mov cl, count
           mov dh, 00H
           mov dl, 00H
    here:  mov bl, [si]
           and bl, 01H ;Mask everything but lsb
           jne ecnt
           inc dh
           jmp done
    ecnt:  inc dl
    done:  inc si
           dec cl
           jnz here
           
           mov odd, dh
           mov eve, dl
           mov ah, 4ch
           int 21h
code ends
    end start
