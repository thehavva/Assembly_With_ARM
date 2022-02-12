       LDR     R0, =0x20000020
       MOV     R1, #0
       MOV     R2, #9
       MOV     R3, #0
       MOV     R4, #1
       MOV     R5, #0x04

Loop   
       STR     R1, [R0, R5]
       ADD     R3, R3, R4
       MOV     R1, R3
       MOV     R3, R4
       MOV     R4, R1
       ADD     R5, R5, #4
       SUBS    R2, R2 ,#1
       BNE     Loop