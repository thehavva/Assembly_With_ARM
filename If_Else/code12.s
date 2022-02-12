        MOV     R4, #5
        MOV     R5, #1

        CMP     R5, R4 ; R5-R4
        BHS     greater ;if R5 is greater or equal than R4, JUMP GREATER LABEL
        ;ELSE
        MOV     RO, #0xAA
        B       jumping
greater MOV     R0, #0xFF

jumping