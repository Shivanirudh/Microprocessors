;sum of digits in 16-bit number

        mov r0, #0FFH
        mov r1, #0FFH

        mov r2, #08H
        mov r3, #00H

        mov a, r1
        anl a, #0FH
        mov r3, a
        mov a, r1
        swap a
        anl a, #0FH
        add a, r3
        mov r3, a

        mov a, r0
        anl a, #0FH
        add a, r3
        mov r3, a
        mov a, r0
        swap a
        anl a, #0FH
        add a, r3

        mov r3, a
