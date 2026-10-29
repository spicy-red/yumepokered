	db DEX_SWINUB ; pokedex id

	db  50,  50,  40,  50,  30
	;   hp  atk  def  spd  spc

	db ICE, GROUND ; type
	db 225 ; catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw SwinubPicFront
	dw SwinubPicBack ; native 48x48 back sprite

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_SLOW ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, ICE_BEAM, BLIZZARD, \
	     RAGE, DIG, MIMIC, DOUBLE_TEAM, REST, SUBSTITUTE

	db BANK(SwinubPicFront)
	assert BANK(SwinubPicFront) == BANK(SwinubPicBack)
