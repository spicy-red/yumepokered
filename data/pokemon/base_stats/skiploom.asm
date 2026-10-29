	db DEX_SKIPLOOM ; pokedex id

	db  55,  45,  50,  80,  65
	;   hp  atk  def  spd  spc

	db GRASS, FLYING ; type
	db 120 ; catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw SkiploomPicFront
	dw SkiploomPicBack ; native 48x48 back sprite

	db SPLASH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_FAST ; growth rate from learnsets.csv

	tmhm TOXIC, TAKE_DOWN, DOUBLE_EDGE, MEGA_DRAIN, SOLARBEAM, RAGE, \
	     MIMIC, DOUBLE_TEAM, REFLECT, REST, SUBSTITUTE, FLASH

	db BANK(SkiploomPicFront)
	assert BANK(SkiploomPicFront) == BANK(SkiploomPicBack)
