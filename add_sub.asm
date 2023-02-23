;Perform 2’s complement addition and subtraction. Check the bit in bit-address 15h. If the bit is 0 the program should perform addition, otherwise it should perform subtraction

ORG 0000h ; Set the origin to 0000h

MOV A, 15h ; Load the bit-address into accumulator A
MOV R1, A ; Move the bit-address to register R1

MOV A, @R1 ; Load the value of the bit at address 15h into accumulator A

CJNE A, #0h, SUBTRACTION ; If the bit is 1, jump to the subtraction code

ADDITION: ; Addition code

MOV A, #10h ; Load the first operand into accumulator A (in 2's complement form)
MOV R2, A ; Move the first operand to register R2

MOV A, #20h ; Load the second operand into accumulator A
MOV R3, A ; Move the second operand to register R3

CLR C ; Clear the carry flag
ADD A, R2 ; Add the first operand to accumulator A
MOV R4, A ; Move the result to register R4
ADDC A, #0h ; Add the carry to accumulator A
MOV R5, A ; Move the final result to register R5

SJMP END ; Jump to the end of the program

SUBTRACTION: ; Subtraction code

MOV A, #10h ; Load the first operand into accumulator A (in 2's complement form)
MOV R2, A ; Move the first operand to register R2

MOV A, #20h ; Load the second operand into accumulator A
MOV R3, A ; Move the second operand to register R3

CLR C ; Clear the carry flag
subb A, R2 ; Add the first operand to accumulator A
MOV R4, A ; Move the result to register R4



END: ; End of program
end

