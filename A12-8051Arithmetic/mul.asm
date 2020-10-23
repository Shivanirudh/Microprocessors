;Program to perform 8051 multiplication 
       mov r0, #00
       mov a, r1
       mov b, r2
       mul ab

       mov r3, b
       mov r4, a
here:  sjmp here
