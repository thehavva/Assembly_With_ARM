Mem_Addr equ     0x20000000

         LDR     R3, =Mem_Addr
         MOV     R2, #0X00
         MOV     R4, #0X06
Loop1    
         ADD     R2, R2, #0x04
         STR     R4, [R3, R2]
         SUBS    R4, R4, #0x1
         BPL     Loop1

         LDR     R3, =Mem_Addr
         MOV     R2, #0X00
         MOV     R4, #0X06
         MOV     R6, #0x00

Loop2    
         ADD     R2, R2, #0x04
         LDR     R5, [R3, R2]
         ADD     R6, R6, R5
         SUBS    R4, R4, #0x1
         BPL     Loop2
