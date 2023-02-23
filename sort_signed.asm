;ALP to sort an array of signed numbers. The size of the is stored in memory location 40h followed by the elements. Store the sorted array in the same memory locations.

org 0h

mov 40h,#3h
mov 41h,#2h
mov 42h,#7h
mov 43h,#128
mov 44h,#255

mov r5,#5h
clr c
outer:
	mov r0,#40h
	mov r4,#4h
	inner:
		mov a,@r0
		jb acc.7,lb1
		inc r0
		mov r1,a
		mov a,@r0
		jb acc.7,swap1
		subb a,r1
		sjmp case1
		lb1:
		inc r0
		mov r1,a
		mov a,@r0
		jb acc.7,lb2
		sjmp exitif
		lb2:
		subb a,r1
		jc exitif
		sjmp swap1
		case1:
		jnc exitif
			swap1:
			mov a,@r0
			dec r0
			mov @r0,a
			inc r0
			mov a,r1
			mov @r0,a
		exitif:
	djnz r4,inner
djnz r5,outer
end

	

	



