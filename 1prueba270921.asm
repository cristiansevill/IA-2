        DEVICE ZXSPECTRUM48
        SLDOPT COMMENT WPMEN, LOGPOINT, ASSERTION
    org $8000


   di
   ld sp, 0
   ld hl, pantalla
   ld de, $4000
   ld bc, 6912

bucle: 
    ld a, (hl)
    ld (de),a 
    inc de
    inc hl 
    dec bc 
    ld a,b 
    or c 
    jr nz, bucle 
fin: jr fin 

pantalla: incbin "BATMAN.scr"


