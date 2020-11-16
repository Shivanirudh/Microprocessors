;5. Write an ALP using 8051 to find smallest in a list.

        mov r0, #10h
        mov r3, #05h
        mov r1, #20h ;minimum

here:   mov a, @r0
        cjne a, 01H, neq
        sjmp gret
neq:    jc less
        ajmp gret
less:   mov r1, a
gret:   inc r0
        djnz r3, here
halt:   sjmp halt
