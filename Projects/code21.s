       LDR     R0,=0x3040
       MOV     R1,#1 ;For AND gate
       MOV     R2, #3 ;number of external loop
       MOV     R4, #3 ;number of internal loop
       LDR     R3,=0xF0F1F2F3
       STR     R3,[R0]
       LDR     R3,=0xF4F5F6F7
       STR     R3,[R0,#4]
       LDR     R3,=0xF8F9FAFB
       STR     R3,[R0,#8]
       LDR     R3,=0xFCFDFEFF
       STR     R3,[R0,#12]
       MOV     R6, #0 ;sum of numbers
       MOV     R9, #0
       MOV     R3,#0

Loop1  
       LDR     R5,[R0,R9]
Loop2  
       AND     R7,R5,R1
       ADD     R6, R6,R7
       LSR     R5,R5,#8
       SUBS    R4, R4,#1
       BHS     Loop2

       MOV     R4,#3
       ADD     R9, R9,#4
       SUBS    R2,R2,#1
       BHS     Loop1

       LSR     R6, R6, #16


