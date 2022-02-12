Mem_Addr equ     0x20000040

         MOV     R0, #0x09
         MOV     R1, #0x11
         MOV     R2, #10

         LDR     R3, =Mem_Addr
         STR     R2,[R3]
         LDR     R0,[R3]

         MOV     R2, #0x08
         STR     R1, [R3, R2]
         ;STR    R1, [R3, #0x04]
