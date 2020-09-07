
;Program for multiplying two 16 bit numbers

assume cs:code,ds:data
data segment
	opr1 dw 2222h
        opr2 dw 3333h
        resultu dw 0000H
        resultl dw 0000H
data ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax

        mov ax,opr1
        mov bx,opr2
	    mul bx
        mov resultu,dx
        mov resultl,ax
        mov ah,4ch
        int 21h
	code ends
end start
