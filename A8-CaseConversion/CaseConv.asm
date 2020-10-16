;Program to convert characters entered through keyboard

assume cs:code, ds:data

data segment
	count equ 10H
data ends

code segment
	start: mov ax, data
		   mov ds, ax

		   mov cx, count
	l1:    mov ah, 1
		   int 21h

		   cmp al, 60H
		   jnc upper

		   add al, 20H
		   jmp done

	upper: sub al, 20H
	
	done:  mov ah, 2
		   mov dl, al
		   int 21h
		   loop l1

		   mov ah, 4ch
		   int 21h
code ends
	end start

