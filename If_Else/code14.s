       MOV     R0, #0x00
       MOV     R1, #0x2
       MOV     R2, #0x3

       CMP     R1, R2 ; R1-R2
       BLO     loop1 ;lower
       ;else
       MOV     R0,R1
       B       loop2

loop1  MOV     R0, R2

loop2  
