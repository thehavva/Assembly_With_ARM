       MOV     R0, #0x01
       MOV     R1, #0x11
       MOV     R2, #0xAA

       LDR     R3, =0x20000040
       STR     R2, [R3]
       LDR     R0, [R3]
