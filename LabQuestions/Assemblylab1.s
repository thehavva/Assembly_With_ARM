Mem_equ equ     0x200

        LDR     R0, =Mem_equ
        LDR     R1, =0xF0F1F3F4
        LDR     R2, =0x000000FF
        STR     R1, [R0]
        MOV     R3,#0x00
        MOV     R4,#0 ;sum of values

        AND     R3, R1,R2 ;F4 is got
        ADD     R4, R4, R3
        LSR     R1, R1, #8

        AND     R3, R1,R2 ;F3 is got
        ADD     R4, R4, R3
        LSR     R1, R1, #8

        AND     R3, R1,R2 ;F1 is got
        ADD     R4, R4, R3
        LSR     R1, R1, #8

        AND     R3, R1,R2 ;F0 is got
        ADD     R4, R4, R3

        LSR     R4, R4, #2 ;Find average value by dividing 4
        STR     R4, [R0,#4]

