;2. Write an ALP using 8051 to find the sum of all odd numbers in a list.

        mov r0, #10h
        mov r1, #05h
        mov r2, #00h
		mov r3, #00h

here:   mov a, @r0
        anl a, #01h
        cjne a, #01h, next
        mov a, @r0
        add a, r2
		mov r2, a
		jnc carry
		ajmp next
carry:	inc r3
next:   inc r0
        djnz r1, here
halt:   sjmp halt
