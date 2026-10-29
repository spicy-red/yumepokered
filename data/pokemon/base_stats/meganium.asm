	db DEX_MEGANIUM ; pokedex id

	db 100,  82, 100,  80, 100
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 45 ; provisional catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw MeganiumPicFront
	dw MeganiumPicBack ; native 48x48 back sprite

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_SLOW ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, HYPER_BEAM, MEGA_DRAIN, \
	     SOLARBEAM, RAGE, EARTHQUAKE, MIMIC, DOUBLE_TEAM, REFLECT, \
	     REST, SUBSTITUTE, FLASH, CUT, STRENGTH

	db BANK(MeganiumPicFront)
	assert BANK(MeganiumPicFront) == BANK(MeganiumPicBack)
