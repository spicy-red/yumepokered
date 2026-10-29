	db DEX_TYPHLOSION ; pokedex id

	db  78,  84,  78, 100, 100
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 65 ; provisional base exp

	db SPRITE_DIM_LARGE
	dw TyphlosionPicFront
	dw TyphlosionPicBack ; native 48x48 back sprite

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 moves imported from learnsets.csv
	db GROWTH_MEDIUM_SLOW ; growth rate from learnsets.csv

	tmhm MEGA_PUNCH, MEGA_KICK, TOXIC, BODY_SLAM, TAKE_DOWN, DOUBLE_EDGE, \
	     HYPER_BEAM, RAGE, EARTHQUAKE, FISSURE, DIG, MIMIC, \
	     DOUBLE_TEAM, REFLECT, FIRE_BLAST, REST, SUBSTITUTE, STRENGTH

	db BANK(TyphlosionPicFront)
	assert BANK(TyphlosionPicFront) == BANK(TyphlosionPicBack)
