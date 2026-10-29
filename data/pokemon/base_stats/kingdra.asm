	db DEX_KINGDRA ; pokedex id

	db  95,  95,  95,  95,  95
	;   hp  atk  def  spd  spc

	db DRAGON, WATER ; type
	db 45 ; catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw KingdraPicFront
	dw KingdraPicBack ; native 48x48 back sprite

	db BUBBLE, SMOKESCREEN, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_FAST ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, BUBBLEBEAM, ICE_BEAM, \
	     BLIZZARD, HYPER_BEAM, RAGE, MIMIC, DOUBLE_TEAM, REST, \
	     SUBSTITUTE, SURF

	db BANK(KingdraPicFront)
	assert BANK(KingdraPicFront) == BANK(KingdraPicBack)
