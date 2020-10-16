;Program to subtract two floating point numbers

assume cs:code, ds:data
data segment
	org 00H
	num1 dd 20.4575
	
	org 10H
	num2 dd 20.4325
	
	org 20H
	sum dd ?
data ends
code segment
	start: mov ax, data
		   mov ds, ax

		   finit          
		   fld num1
		   fld num2

		   fsub st(0), st(1)

		   fst sum

		   mov ah, 4ch
		   int 21h
code ends
	end start


