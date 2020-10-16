;Program to display a string

assume cs:code, ds:data
data segment
	msg db "hello world"
data ends
code segment
	start: mov ax, data
		   mov ds, ax

		   mov ah, 9
		   mov dx, offset msg
		   int 21h

		   mov ah, 4ch
		   int 21h
code ends
	end start
