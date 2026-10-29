	db DEX_CYNDAQUIL ; pokedex id

	db  39,  52,  43,  65,  60
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw CyndaquilPicFront
	dw CyndaquilPicBack ; native 48x48 back sprite

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_SLOW ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, RAGE, MIMIC, \
	     DOUBLE_TEAM, REFLECT, FIRE_BLAST, REST, SUBSTITUTE

	db BANK(CyndaquilPicFront)
	assert BANK(CyndaquilPicFront) == BANK(CyndaquilPicBack)
