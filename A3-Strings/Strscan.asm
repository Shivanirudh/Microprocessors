; Program to search for a byte in a string

assume cs:code, ds:data, es:extra

data segment
	val db 32H
	count dw 0005H
	result dw 0000H
data ends

extra segment
	str db 98H, 76H, 54H, 32H, 10H
extra ends

code segment
	start: mov ax, data
		   mov ds, ax
		   mov ax, extra
		   mov es, ax
		   
		   mov di, offset str
		   mov al, val
		   mov cx, count
		   inc cx

		   cld
		   repne scasb 

		   mov result, cx

		   mov ah, 4ch
		   int 21h
code ends
	end start