;8051 Program to convert BCD to ASCII

       mov r0, #00
       mov a, r1
       anl a, #0FH
       add a, #30H
       mov r5, a

       mov a, r1
       anl a, #0F0H
	swap a
       add a, #30H
       mov r4, a
here:  sjmp here
