	db DEX_ODOS_PSYDUCK ; internal Pokédex index, omitted from the visible dex

	db 250, 40, 250, 250, 250
	;   hp  atk  def  spd  spc

	db WATER, WATER; type
	db 0 ; catch rate
	db 80 ; base exp

	db SPRITE_DIM_SMALL
	dw PsyduckPics
	dw 0

	db HEADACHE, NO_MOVE, NO_MOVE, NO_MOVE ; only level-up move
	db GROWTH_MEDIUM_FAST

	tmhm SURF;

	db BANK(PsyduckPicFront)
	assert BANK(PsyduckPicFront) == BANK(PsyduckPicBack)


