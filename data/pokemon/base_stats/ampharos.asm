	db DEX_AMPHAROS ; pokedex id

	db  90,  75,  75,  55, 115
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw AmpharosPicFront
	dw AmpharosPicBack ; native 48x48 back sprite

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_FAST ; growth rate from learnsets.csv

	tmhm MEGA_PUNCH, MEGA_KICK, TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, \
	     HYPER_BEAM, THUNDERBOLT, THUNDER, RAGE, MIMIC, DOUBLE_TEAM, \
	     REFLECT, REST, THUNDER_WAVE, SUBSTITUTE, STRENGTH, FLASH

	db BANK(AmpharosPicFront)
	assert BANK(AmpharosPicFront) == BANK(AmpharosPicBack)
