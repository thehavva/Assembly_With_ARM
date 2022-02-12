       MOV     R1, #3
       MOV     R2, #0x00
loop1  
       CMP     R1,R2
       BEQ     if
       SUB     R1, R1, #1
       B       loop1
if     
