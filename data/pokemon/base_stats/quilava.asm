	db DEX_QUILAVA ; pokedex id

	db  58,  64,  58,  80,  80
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; provisional catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw QuilavaPicFront
	dw QuilavaPicBack ; native 48x48 back sprite

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_SLOW ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, RAGE, MIMIC, \
	     DOUBLE_TEAM, REFLECT, FIRE_BLAST, REST, SUBSTITUTE

	db BANK(QuilavaPicFront)
	assert BANK(QuilavaPicFront) == BANK(QuilavaPicBack)
