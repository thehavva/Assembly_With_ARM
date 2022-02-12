Mem_adress equ     0x20000020

           LDR     R0, =Mem_adress
           MOV     R1, #11 ; number of elements of array is 5 begining integer value of 0.
           MOV     R2, #0
           MOV     R3, #0

loop1      
           STR     R3, [R0, R2]
           ADD     R2, R2, #4
           ADD     R3, R3, #1
           SUBS    R1, R1, #1
           BNE     loop1

           LDR     R0, =Mem_adress
           MOV     R1, #11 ; number of loop
           MOV     R2, #0
           MOV     R3, #4

           MOV     R5, #0 ;Sum of odd elements
           MOV     R6, #0 ;Sum of even elements

loop2      
           MOV     R7, #0 ;odd elements
           MOV     R8, #0 ;even elements

           LDR     R8, [R0, R2]
           STR     R8, [R0, R2]
           ADD     R6, R6, R8

           LDR     R7, [R0, R3]
           STR     R7, [R0, R3]
           ADD     R5, R5, R7

           ADD     R2, R2, #8
           ADD     R3, R3, #8
           SUBS    R1, R1, #1
           BNE     loop2

