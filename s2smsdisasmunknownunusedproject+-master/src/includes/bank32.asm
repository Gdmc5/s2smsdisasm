; -TitleCardPicturePointerData&CodeMoved This Code is from S2.Asm it loads the Current Zone Picture it got moved here to be with the data pointer to fix errors/glitches with loading the data -Gdmc5
    jp    z, ScoreCard_LoadMappings
    ld    a, :Bank25          ;load the level picture
    call  Engine_SwapFrame2
    ld    hl, $0000
    call  VDP_SetAddress
	ld	a, :Bank32
	call Engine_SwapFrame2
    ld    a, (CurrentLevel)       ;which level do we need the picture for?
    add   a, a                    ;calcuate the offset into the pointer array
    add   a, a
    ld    l, a
    ld    h, 0
    ld    de, TitleCard_PicturePointers
    add   hl, de
    ld    e, (hl)     ;get the pointer to the mappings
    inc   hl
    ld    d, (hl)
    push  de
    inc   hl          ;get the pointer to the tiles
    ld    e, (hl)
    inc   hl
    ld    d, (hl)
    ex    de, hl
    xor   a
    call  LoadTiles       ;load the tiles into VRAM
    pop   de              ;load the mappings into VRAM
    ret

; This Data Pointer Table is from S2.asm but I moved it here to fix not being able to add More Zone Entrys to the Table so I can now add more Title Card Picture Mappings and Art
TitleCard_PicturePointers:
_DATA_7761:
;   Mappings
;      |   Tiles
;  |------|-----|
;.dw $B806, $8000
;.dw $B906, $89A0
;.dw $BA06, $9410
;.dw $BB06, $9DC0
;.dw $BC06, $A446
;.dw $BD06, $AC26
;.dw $BE06, $B0A6

.dw UGZ_Title_Pic_Mappings, UGZ_Title_Pic_Art
.dw SHZ_Title_Pic_Mappings, SHZ_Title_Pic_Art
.dw ALZ_Title_Pic_Mappings, ALZ_Title_Pic_Art
.dw GHZ_Title_Pic_Mappings, GHZ_Title_Pic_Art
.dw GMZ_Title_Pic_Mappings, GMZ_Title_Pic_Art
.dw SEZ_Title_Pic_Mappings, SEZ_Title_Pic_Art
.dw CEZ_Title_Pic_Mappings, CEZ_Title_Pic_Art
; -EndingZoneNewAddedData Added in the Ending Zone to the Title Card Picture Pointers Table with Placeholder Data -Gdmc5
.dw GHZ_Title_Pic_Mappings, GHZ_Title_Pic_Art ; it uses Green Hills Zone Title Card Picture as a Placeholder -Gdmc5
; -UNKNOWNUNUSEDZONE Added in the Unknown Unused? Zone to the Title Card Picture Pointers Table with a copy of Crystal Egg Zone's Data as a Placeholder -Gdmc5
.dw CEZ_Title_Pic_Mappings, CEZ_Title_Pic_Art
; -IntroandTitleScreenZoneNewAddedData Added in the Intro and Title Screen Zone to the Title Card Picture Pointers Table with Placeholder Data -Gdmc5
.dw GHZ_Title_Pic_Mappings, GHZ_Title_Pic_Art ; it uses Green Hills Zone Title Card Picture as a Placeholder -Gdmc5


Layout_UNKZ1:
.incbin "layout\unkz\layout_unkz1.bin"

Layout_UNKZ2:
.incbin "layout\unkz\layout_unkz2.bin"

Layout_UNKZ3:
.incbin "layout\unkz\layout_unkz3.bin"

Layout_DUMMYZ:
.incbin "layout\dummyz\layout_dummyz.bin"
