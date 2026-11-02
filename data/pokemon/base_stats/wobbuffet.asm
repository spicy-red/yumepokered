	db DEX_WOBBUFFET ; pokedex id

	db 250,  33,  60,  33,  60
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 177 ; base exp

	db SPRITE_DIM_LARGE
	dw WobbuffetPicFront
	dw WobbuffetPicBack ; native 48x48 back sprite

	db RETALIATE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 moves
	db GROWTH_SLOW ; growth rate

	tmhm

	db BANK(WobbuffetPicFront)
	assert BANK(WobbuffetPicFront) == BANK(WobbuffetPicBack)
