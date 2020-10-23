; Program to perform 8051 division 
       mov r0, #00
       mov a, r1
       mov b, r2
       div ab

       mov r3, a
       mov r4, b
here:  sjmp here
