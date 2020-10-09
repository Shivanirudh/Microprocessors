;Program to bubble sort an array into ascending order

assume cs:code, ds:data
data segment
    arr db 05H, 04H, 03H, 02H, 01H
    count db 04H
data ends
code segment
    start: mov ax, data
           mov ds, ax
           
           mov cl, count 
    
    outer: mov si, offset arr
           mov ch, count
    inner: mov al, [si]
           mov ah, [si+1]

           cmp ah, al
           jnc noswap
           
           xchg al, ah
           mov [si], al
           mov [si+1], ah
    noswap:inc si
           dec ch
           jnz inner
           dec cl
           jnz outer

           mov ah, 4ch
           int 21h
code ends
    end start
