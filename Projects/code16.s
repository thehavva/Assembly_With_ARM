       LDR     R0,=0x20000020

       MOV     R1,#9 ;döngü sayısı
       MOV     R2,#0x0 ; ilk deger
       MOV     R3,#0X00
loop1  

       STR     R2,[R0,R3]
       ADD     R3,R3,#0X04
       ADD     R2,R2,#1
       SUBS    R1,R1,#1

       BHS     loop1

       LDR     R0,=0x20000024 ; çiftlerin adres
       LDR     R9,=0x20000020 ; teklerin adres
       MOV     R1,#0x00
       MOV     R2,#4 ;döngü sayısı

loop2  
       MOV     R3,#0x0 ; buff1 çiftlerin
       MOV     R4,#0x0 ; buff2 teklerin

       LDR     R3,[R0,R1]
       LDR     R4,[R9,R1]

       STR     R3,[R9,R1]
       STR     R4,[R0,R1]

       ADD     R1,R1,#0X08
       SUBS    R2,R2,#1
       BHS     loop2