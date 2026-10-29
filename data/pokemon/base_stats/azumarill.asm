	db DEX_AZUMARILL ; pokedex id

	db 100,  70,  80,  50,  80
	;   hp  atk  def  spd  spc

	db NORMAL, WATER ; type
	db 75 ; catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw AzumarillPicFront
	dw AzumarillPicBack ; native 48x48 back sprite

	db TACKLE, WATER_GUN, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_FAST ; growth rate from learnsets.csv

	tmhm MEGA_PUNCH, MEGA_KICK, TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, \
	     BUBBLEBEAM, ICE_BEAM, BLIZZARD, HYPER_BEAM, RAGE, MIMIC, \
	     DOUBLE_TEAM, REST, SUBSTITUTE, SURF, STRENGTH

	db BANK(AzumarillPicFront)
	assert BANK(AzumarillPicFront) == BANK(AzumarillPicBack)
