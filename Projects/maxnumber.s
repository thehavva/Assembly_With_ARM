Mem_adress equ     0x20000020

           LDR     R0, =Mem_adress
           MOV     R1, #6 ; number of elements of array is 5 begining integer value of 0.
           MOV     R2, #0
           MOV     R3, #0

loop1      
           STR     R3, [R0, R2]
           ADD     R2, R2, #4
           ADD     R3, R3, #1
           SUBS    R1, R1, #1
           BNE     loop1

           LDR     R0, =Mem_adress
           MOV     R1, #6 ; number of loop
           MOV     R3, #0
           MOV     R4, #0 ;max number

loop2      
           MOV     R5, #0
           LDR     R5, [R0,R3];
           STR     R5, [R0, R3];
           ADD     R3, R3, #4
           CMP     R5, R4 ;R5-R4
           BHS     greater
           B       Jump

greater    MOV     R4, R5

Jump       SUBS    R1, R1, #1
           BNE     loop2


