	db DEX_CHIKORITA ; pokedex id

	db  60,  49,  65,  45,  65
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 45 ; provisional catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw ChikoritaPicFront
	dw ChikoritaPicBack ; native 48x48 back sprite

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_SLOW ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, MEGA_DRAIN, SOLARBEAM, \
	     RAGE, MIMIC, DOUBLE_TEAM, REFLECT, REST, SUBSTITUTE, \
	     FLASH

	db BANK(ChikoritaPicFront)
	assert BANK(ChikoritaPicFront) == BANK(ChikoritaPicBack)
