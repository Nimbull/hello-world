;****
; HELLO.ASM - Hello world in 6809 assembly!
;****
; By Nimbull
;****

        org     $4000           ; Get the party started memory location.

Start   lda     #96             ; Clear screen.
        ldx     #$400
CSLoop  sta     ,x+             ; Clear loop.
        cmpx    #$600
        bne     CSLoop

        ldx     #HelloS         ; Message string.
        ldy     #$500           ; Position on screen.
MLoop   lda     ,x+             ; Message output loop.
        cmpa    #64
        beq     Done
        bgt     Skip
        adda    #64
Skip    sta     ,y+
        bra     MLoop

HelloS  fcc     'HELLO WORLD!'  ; Message string
        fcb     '@'             ; EOL char.

Done    rts                     ; Return to OS.

        End     Start           ; Done.
