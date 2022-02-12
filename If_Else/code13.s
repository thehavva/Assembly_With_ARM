        MOV     R1, #0x10

        CMP     R1, #10
        BHI     Loop1
        ;else
        ADD     R1, R1, #1
        B       jumping
        
Loop1   MOV     R1, #0x10

jumping 