
;Program for dividing two 8 bit numbers

assume cs:code,ds:data
data segment
	opr1 dw 6666h
        opr2 dw 3333h
        resultq dw 0000H
        resultr dw 0000H
data ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax

        mov ax,opr1
        mov dx, 0001H
        mov bx,opr2
	    div bx
        mov resultq, ax
        mov resultr, dx
        mov ah,4ch
        int 21h
	code ends
end start
