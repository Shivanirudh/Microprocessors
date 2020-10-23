;Program to find cube of a number in 8051 
       mov r0, #00
       mov a, r1
       mov b, r1
       mul ab

       mov b, r1
       mul ab
       mov r4, b
       mov r5, a 
here:  sjmp here
