;Program to convert hexadecimal number to bcd

assume cs:code, ds:data
data segment
	bcd_u db 00H
	bcd_l db 00H
	hex db 0FFH
data ends

code segment
	start: mov ax, data
		   mov ds, ax

		   mov cl, 64H
		   mov ch, 0AH
		   mov al, hex
		   mov ah, 00H
		   div cl
		   
		   mov bcd_u, al
		  
		   mov al, ah
		   mov ah, 00H
		   div ch

		   mov cl, 04H
		   mov ch, ah
		   shl al, cl
		   add al, ch

		   mov bcd_l, al

		   mov ah, 4ch
		   int 21h
code ends
	end start