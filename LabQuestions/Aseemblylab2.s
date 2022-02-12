Mem_equ equ     0x200

        LDR     R0, =Mem_equ
        LDR     R1, =0xF0F1F3F5
        MOV     R2,#1
        STR     R1, [R0]
        MOV     R3,#0x00
        MOV     R4,#4
        MOV     R5,#0 ;Number of even
        MOV     R6,#0 ;Number of odd
        MOV     R7,#4
        MOV     R8,#4

Loop1   
        AND     R3, R1, R2 ;We find charecter step by step as 2 bits
        MOV     R7, R3
        SUBS    R7, R7,#1
        BHS     loop2
        B       Jump
loop2   ADD     R6, R6,#1
Jump    
        LSR     R1, R1,#8
        SUB     R4,R4, #1
        CMP     R8,R4 ;R7-R4
        BHS     Loop1
        SUB     R5,R8,R6
        STR     R5, [R0,#4]
        STR     R6, [R0,#8]
