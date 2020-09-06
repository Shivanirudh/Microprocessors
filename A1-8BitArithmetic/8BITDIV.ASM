
;Program for dividing two 8 bit numbers

assume cs:code,ds:data
data segment
	opr1 db 11h
        opr2 db 10h
        resultq db 00H
        resultr db 00H
data ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax

        mov al,opr1
        mov ah, 01H
        mov bh,opr2
	div bh
here:  mov resultq,ah
       mov resultr, al
        mov ah,4ch
        int 21h
	code ends
end start
