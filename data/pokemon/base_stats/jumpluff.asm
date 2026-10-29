	db DEX_JUMPLUFF ; pokedex id

	db  75,  55,  70, 115,  90
	;   hp  atk  def  spd  spc

	db GRASS, FLYING ; type
	db 45 ; provisional catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw JumpluffPicFront
	dw JumpluffPicBack ; native 48x48 back sprite

	db SPLASH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_FAST ; growth rate from learnsets.csv

	tmhm TOXIC, TAKE_DOWN, DOUBLE_EDGE, HYPER_BEAM, MEGA_DRAIN, SOLARBEAM, \
	     RAGE, MIMIC, DOUBLE_TEAM, REFLECT, REST, SUBSTITUTE, \
	     FLASH

	db BANK(JumpluffPicFront)
	assert BANK(JumpluffPicFront) == BANK(JumpluffPicBack)
