;find the largest element in an array. The number of elements is stored in memory location 40h followed by the elements. Store the largest number and its address in the consecutive memory locations.

mov r3,40h
clr c
mov r0,#40h
mov r1,41h
loop: 
inc r0
mov a,@r0
subb a,r1
jc lend
mov a,@r0
mov r1,a
lend: djnz r3,loop
end