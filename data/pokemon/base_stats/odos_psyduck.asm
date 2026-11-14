db DEX_ODOS_PSYDUCK ; internal Pokédex index, omitted from the visible dex

	db 250, 40, 250, 250, 250
	;   hp  atk  def  spd  spc

	db WATER, WATER; type
	db 0 ; catch rate
	db 80 ; base exp

	db SPRITE_DIM_LARGE
	dw ODOS_PSYDUCKPics 
	dw 0

	db HEADACHE, AMNESIA, REST, NO_MOVE ; only level-up move
	db GROWTH_MEDIUM_FAST

	tmhm SURF;

	db BANK(ODOS_PSYDUCKPicFront)
	assert BANK(ODOS_PSYDUCKPicFront) == BANK(ODOS_PSYDUCKPicBack)