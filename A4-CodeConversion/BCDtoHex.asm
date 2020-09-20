;Program to convert BCD number to hexadecimal

assume cs:code, ds:data
data segment
	bcd db 34H
	hex dw 0000H
data ends

code segment
	start: mov ax, data
		   mov ds, ax

		   mov dl, 0AH
		   
		   mov al, bcd
		   and al, 0F0H
		   mov cl, 04H
		   shr al, cl
		   mul dl

		   mov bl, bcd
		   and bl, 0FH
		   mov bh, 00H
		   add ax, bx 

		   mov hex, ax

		   mov ah, 4ch
		   int 21h
code ends
	end start