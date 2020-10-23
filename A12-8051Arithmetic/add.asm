; Program to perform 8051 addition

       mov r0, #00
       mov a, r1
       add a, r2
       jnc label
       inc r0
label: mov r4, a
       mov 03, r0
here:  sjmp here
