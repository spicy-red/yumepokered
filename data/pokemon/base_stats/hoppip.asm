	db DEX_HOPPIP ; pokedex id

	db  35,  35,  40,  50,  55
	;   hp  atk  def  spd  spc

	db GRASS, FLYING ; type
	db 255 ; catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw HoppipPicFront
	dw HoppipPicBack ; native 48x48 back sprite

	db SPLASH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_FAST ; growth rate from learnsets.csv

	tmhm TOXIC, TAKE_DOWN, DOUBLE_EDGE, MEGA_DRAIN, SOLARBEAM, RAGE, \
	     MIMIC, DOUBLE_TEAM, REFLECT, REST, SUBSTITUTE, FLASH

	db BANK(HoppipPicFront)
	assert BANK(HoppipPicFront) == BANK(HoppipPicBack)
