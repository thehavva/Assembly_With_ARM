Mem_adress equ     0x20000020

           LDR     R0, =Mem_adress
           MOV     R1, #5 ; number of elements of array is 5 begining integer value of 0.
           MOV     R2, #0
           MOV     R3, #0
           MOV     R7, #0 ;Sum of array elements


loop1      
           STR     R3, [R0, R2]
           ADD     R7, R7, R3
           ADD     R2, R2, #4
           ADD     R3, R3, #1
           SUBS    R1, R1, #1
           BNE     loop1