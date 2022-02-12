       ;for
       MOV     R4, #0x05
LOOP1  
       SUBS    R4, R4, #0x01
       BHS     LOOP1
       MOV     R4, #0x0A
