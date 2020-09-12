; Program to move string without string instructions

assume cs:code, ds:data
data segment
	source db 98H, 76H, 54H, 32H, 10H
	count dw 0005H
	dest db ?
data ends

code segment
	start: mov ax, data
		   mov ds, ax

		   mov si, offset source
		   mov di, offset dest
		   mov cx, count

	here:  mov bl, [si]
		   mov [di], bl
		   inc si
		   inc di
		   dec cx
		   jnz here

		   mov ah, 4ch
		   int 21h
code ends
	end start