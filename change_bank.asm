;changing banks
org 0h
ljmp 8500h
org 8500h
mov r0, #10h
mov 09h, #15h
mov a, r0
setb psw.3
add a, r1
setb psw.4
clr psw.3
mov r5, a