
;Program for multiplying two 8 bit numbers

assume cs:code,ds:data
data segment
	opr1 db 11h
        opr2 db 99h
        resultu db 00H
        resultl db 00H
data ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax

        mov al,opr1
        mov ah, 00H
        mov bh,opr2
	mul bh
here:  mov resultu,ah
       mov resultl, al
        mov ah,4ch
        int 21h
	code ends
end start
