; Program to compare two byte strings

assume cs:code, ds:data, es:extra

data segment
	s1 db 98H, 76H, 54H, 32H, 11H
	count dw 0005H
	result db 00H
data ends

extra segment
	s2 db 98H, 76H, 54H, 32H, 10H
extra ends

code segment
	start: mov ax, data
		   mov ds, ax
		   mov ax, extra
		   mov es, ax

		   mov si, offset s1
		   mov di, offset s2
		   mov cx, count
		   inc cx
		   cld
		   repe cmpsb

		   mov result, cl

		   mov ah, 4ch
		   int 21h
code ends
	end start