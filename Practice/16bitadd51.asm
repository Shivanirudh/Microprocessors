;Program to add two 16 bit numbers in 8051

        mov r0, #12H
        mov r1, #34H
        mov r2, #56H
        mov r3, #78H

        mov a, r1
        add a, r3

        mov r7, a

        mov a, r0
        addc a, r2
        mov r6, a