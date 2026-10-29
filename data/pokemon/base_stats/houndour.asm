	db DEX_HOUNDOUR ; pokedex id

	db  45,  60,  30,  65,  90
	;   hp  atk  def  spd  spc

	db FIRE, GHOST ; type
	db 45 ; provisional catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw HoundourPicFront
	dw HoundourPicBack ; native 48x48 back sprite

	db LEER, EMBER, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_SLOW ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, RAGE, DIG, \
	     MIMIC, DOUBLE_TEAM, REFLECT, FIRE_BLAST, REST, SUBSTITUTE

	db BANK(HoundourPicFront)
	assert BANK(HoundourPicFront) == BANK(HoundourPicBack)
