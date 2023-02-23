org 0h
ljmp 8500h
org 8500h
mov r1, #10h
clr a
mov r2, #05h
next: add a, @r1
	  inc r1
      djnz r2, next
      mov @r1, a
end