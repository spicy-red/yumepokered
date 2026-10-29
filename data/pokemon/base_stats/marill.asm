	db DEX_MARILL ; pokedex id

	db  70,  50,  50,  40,  50
	;   hp  atk  def  spd  spc

	db NORMAL, WATER ; type
	db 190 ; catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw MarillPicFront
	dw MarillPicBack ; native 48x48 back sprite

	db TACKLE, WATER_GUN, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_FAST ; growth rate from learnsets.csv

	tmhm TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, BUBBLEBEAM, ICE_BEAM, \
	     BLIZZARD, HYPER_BEAM, RAGE, MIMIC, DOUBLE_TEAM, REST, \
	     SUBSTITUTE, SURF

	db BANK(MarillPicFront)
	assert BANK(MarillPicFront) == BANK(MarillPicBack)
