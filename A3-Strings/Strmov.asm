;Program to move string of bytes from one location to another

assume cs:code, ds:data, es:extra

data segment
	source db 98H, 76H, 54H, 32H, 10H
	count dw 0005H
data ends

extra segment
	dest db ?
extra ends

code segment
	start: mov ax, data
		   mov ds, ax 

		   mov ax, extra
		   mov es, ax

		   mov si, offset source
		   mov di, offset dest
		   mov cx, count
		   
		   cld
		   rep movsb

		   mov ah, 4ch
		   int 21h
code ends
	end start