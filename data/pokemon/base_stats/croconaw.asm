	db DEX_CROCONAW ; pokedex id

	db  65,  80,  80,  58,  63
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw CroconawPicFront
	dw CroconawPicBack ; native 48x48 back sprite

	db SCRATCH, LEER, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_SLOW ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, BUBBLEBEAM, ICE_BEAM, \
	     BLIZZARD, RAGE, DIG, MIMIC, DOUBLE_TEAM, REST, \
	     SUBSTITUTE, SURF, CUT

	db BANK(CroconawPicFront)
	assert BANK(CroconawPicFront) == BANK(CroconawPicBack)
