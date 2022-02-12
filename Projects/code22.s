       LDR     R0,=0x3040
       LDR     R5,=0x30000040
       LDR     R1,=0x00000000
       MOV     R2,#0x0f ; ilk değer
       MOV     R4,#0x00
       MOV     R3,#3 ; döngü sayisi
       MOV     R7,#3
       MOV     R8,#0 ;sum
       MOV     R9,#0 ; average

loop2  

loop1  

       ORR     R1,R1,R2
       STR     R1,[R0,R4]
       LSL     R1,R1,#8
       ADD     R8,R8,R2
       ADD     R2,R2,#0x10
       SUBS    R3,R3,#1
       BHS     loop1

       MOV     R3,#3
       ADD     R4,R4,#0x04
       SUBS    R7,R7,#1
       BHS     loop2

       LSR     R9,R8,#4
       STR     R9,[R5]