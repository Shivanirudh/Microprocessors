; Program to perform matrix addition

assume cs:code, ds:data
data segment
    r1 db 02H
    r2 db 02H
    c1 db 03H
    c2 db 03H
    count dw 0006H
    mat1 db 22H, 33H, 44H, 55H, 66H, 77H
    mat2 db 33H, 44H, 55H, 66H, 77H, 88H
    mat3 db ?
data ends

code segment
    start: mov ax, data 
           mov ds, ax

           mov si, offset mat1
           mov di, offset mat2
           mov bx, offset mat3
           mov cx, count
           
           mov al, r1
           mov ah, r2
           mov dl, c1
           mov dh, c2
           
           cmp al, ah
           jne exit

           cmp dl, dh
           jne exit

    here:  mov al, [si]
           add al, [di]
           mov [bx], al 
           inc si
           inc di
           inc bx
           dec cx
           jnz here
    
    exit:  mov ah, 4ch
           int 21h
code ends
    end start
