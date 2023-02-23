;multiplication of two 8-bit numbers in location 40h and 41h using repeated addition and store the result in consecutive memory locations
org 0h
mov r0,40h
mov r1,41h
mov a,#0h
loop: add a,r0
djnz r1,loop
end