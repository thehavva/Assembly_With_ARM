       ;while
       MOV     R4, #0x06
       MOV     R5, #0x02
loop   
       SUB     R4, R4, #1
       CMP     R4, R5
       BNE     loop