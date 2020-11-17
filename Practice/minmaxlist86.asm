;3. Write an ALP using 8086 to find the largest among a list.

assume ds:data, cs:code
data segment
    arr db 01h, 07h, 03h, 04h, 09h
    org 10h
    count db 04h
    org 20h
    min db 20h
    max db 00h
data ends
code segment
    start:  mov ax, data
            mov ds, ax

            mov si, offset arr
            mov cl, count

            mov bl, min

    here:   mov al, [si]
            cmp al, bl
            jc store
            jmp next
    store:  mov bl, al
    next:   inc si
            dec cl
            jnz here
            mov min, bl
            mov ah, 4ch
            int 21h
code ends
    end start

