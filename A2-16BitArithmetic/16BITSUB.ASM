;Program for subtracting 2, 8 bit numbers
assume cs:code,ds:data
data segment 
	opr1 dw 1111h
        opr2 dw 9999h
        result dw 0000h
carry dw 0000H
   
data ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax

        mov ax,opr1
        mov bx,opr2
	mov cx,0000h
	sub ax,bx
	jnc here
	inc cx
        neg ah
here:  mov result,ax
	mov carry,cx
        mov ah,4ch
        int 21h
	code ends
end start
