;12. A block of 10 data is stored in the memory from XX00 to XX 09. Write an ALP using 8086 to transfer the data to the memory location YY00 to YY09 in the reverse order.

assume ds:data, cs:code
data segment
    org 00H
    source db 00H, 11H, 22H, 33H, 44H, 55H, 66H, 77H, 88H, 99H
    org 10H
    dest db ?
    org 20H
    count db 0AH
data ends
code segment	
    start: mov ax, data
           mov ds, ax

           mov si, offset source
           mov di, offset dest
           mov cl, count
           add si, 09H
    here:  mov bl, [si]
           mov [di], bl
           inc di
           dec si
           dec cl
           jnz here
           mov ah, 4ch
           int 21h
code ends
    end start

        
