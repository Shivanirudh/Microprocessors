;3. Write an ALP using 8051 to convert a number from BCD to Hex.

        mov r0, #56H

        mov a, r0
        mov b, #10h

        anl a, #0f0h
        div ab
        mov b, #0Ah
        mul ab
        mov r2, a
        mov r1, b

        mov a, r0
        anl a, #0fh

        add a, r2
        addc a, r1

        mov r3, a
halt:   sjmp halt
