	db DEX_ARBOK ; pokedex id

	db  75,  95,  75,  105,  75
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 90 ; catch rate
	db 147 ; base exp

	db SPRITE_DIM_LARGE ; marcelnote - modified data structure
	dw ArbokPics
	dw 0 ; empty

	db POISON_STING, LEER, NO_MOVE, NO_MOVE ; level 1 learnset ; marcelnote - removed WRAP
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         MEGA_DRAIN,   EARTHQUAKE,   FISSURE,      DIG,          \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         SKULL_BASH,   REST,         \
	     ROCK_SLIDE,   SUBSTITUTE,   STRENGTH
	; end

	; marcelnote - improve Pokemon picture system tutorial
	db BANK(ArbokPicFront)
	assert BANK(ArbokPicFront) == BANK(ArbokPicBack)
