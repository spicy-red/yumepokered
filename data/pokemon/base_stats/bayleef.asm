	db DEX_BAYLEEF ; pokedex id

	db  80,  62,  80,  60,  80
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 45 ; provisional catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw BayleefPicFront
	dw BayleefPicBack ; native 48x48 back sprite

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_SLOW ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, MEGA_DRAIN, SOLARBEAM, \
	     RAGE, MIMIC, DOUBLE_TEAM, REFLECT, REST, SUBSTITUTE, \
	     FLASH, CUT

	db BANK(BayleefPicFront)
	assert BANK(BayleefPicFront) == BANK(BayleefPicBack)
