	db DEX_TOTODILE ; pokedex id

	db  50,  65,  64,  43,  48
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; provisional catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw TotodilePicFront
	dw TotodilePicBack ; native 48x48 back sprite

	db SCRATCH, LEER, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_SLOW ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, BUBBLEBEAM, ICE_BEAM, \
	     BLIZZARD, RAGE, DIG, MIMIC, DOUBLE_TEAM, REST, \
	     SUBSTITUTE, SURF

	db BANK(TotodilePicFront)
	assert BANK(TotodilePicFront) == BANK(TotodilePicBack)
