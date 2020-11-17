;8. Write an ALP using 8051 to sort a list of numbers in ascending and descending order

        mov r1, #04h
outer:  mov r2, #04h
        mov r0, #10h
        clr a
inner:  mov a, @r0
        inc r0
        mov 03h, @r0
        cjne a, 03h, check
        sjmp skip
check:  jc skip
        dec r0
		mov @r0, 03h
		inc r0
		mov @r0, a
skip:   djnz r2, inner
        djnz r1, outer
halt:   sjmp halt
