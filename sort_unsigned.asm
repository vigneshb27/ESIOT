;ALP to sort an array. The size of the is stored in memory location 40h followed by the elements. Store the sorted array in the same memory locations.

mov r4,40h
dec r4
outloop: mov r3,40h
dec r3
mov r0,#41h
clr c
inloop: mov a,@r0
mov r1,a
inc r0
mov a,@r0
subb a,r1
jnc inend
mov a,@r0
dec r0
mov @r0,a
mov a,r1
inc r0
mov @r0,a
inend: djnz r3,inloop
djnz r4,outloop
end