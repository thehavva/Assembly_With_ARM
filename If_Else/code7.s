        ;if     else operation
        MOV     R4, #0x06
        CMP     R4, #0x06
        BHS     greater ; branch if higher or same
        SUB     R4, R4,#1 ;R4=R4-1
        B       Done1
greater 
        MOV     R4, #0x00 ;R4=0x00
Done1   
