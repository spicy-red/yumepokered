MrFujisHouse_Script:
	jp EnableAutoTextBoxDrawing

MrFujisHouse_TextPointers:
	def_text_pointers
	dw_const MrFujisHouseSuperNerdText,     TEXT_MRFUJISHOUSE_SUPER_NERD
	dw_const MrFujisHouseLittleGirlText,    TEXT_MRFUJISHOUSE_LITTLE_GIRL
	dw_const MrFujisHousePsyduckText,       TEXT_MRFUJISHOUSE_PSYDUCK
	dw_const MrFujisHouseNidorinoText,      TEXT_MRFUJISHOUSE_NIDORINO
	dw_const MrFujisHouseMrFujiText,        TEXT_MRFUJISHOUSE_MR_FUJI
	dw_const MrFujisHouseMrFujiPokedexText, TEXT_MRFUJISHOUSE_POKEDEX

MrFujisHouseSuperNerdText: ; marcelnote - optimized
	text_asm
	CheckEvent EVENT_RESCUED_MR_FUJI
	ld hl, .MrFujiHadBeenPrayingText
	ret nz
	ld hl, .MrFujiIsntHereText
	ret

.MrFujiIsntHereText:
	text_far _MrFujisHouseSuperNerdMrFujiIsntHereText
	text_end

.MrFujiHadBeenPrayingText:
	text_far _MrFujisHouseSuperNerdMrFujiHadBeenPrayingText
	text_end

MrFujisHouseLittleGirlText: ; marcelnote - optimized
	text_asm
	CheckEvent EVENT_RESCUED_MR_FUJI
	ld hl, .PokemonAreNiceToHugText
	ret nz
	ld hl, .ThisIsMrFujisHouseText
	ret

.ThisIsMrFujisHouseText:
	text_far _MrFujisHouseLittleGirlThisIsMrFujisHouseText
	text_end

.PokemonAreNiceToHugText:
	text_far _MrFujisHouseLittleGirlPokemonAreNiceToHugText
	text_end

MrFujisHousePsyduckText:
	text_far _MrFujisHousePsyduckText
	text_asm
	ld a, PSYDUCK
	call PlayCry
	rst TextScriptEnd

MrFujisHouseNidorinoText:
	text_far _MrFujisHouseNidorinoText
	text_asm
	ld a, NIDORINO
	call PlayCry
	rst TextScriptEnd

MrFujisHouseMrFujiText: ; marcelnote - optimized
	text_asm
	CheckEvent EVENT_GOT_POKE_FLUTE
	ld hl, .HasMyFluteHelpedYouText
	jr nz, .printText
	ld hl, .IThinkThisMayHelpYourQuestText
	call PrintText
	lb bc, POKE_FLUTE, 1
	call GiveItem
	ld hl, .MakeRoomText
	jr nc, .printText
	ld a, TOGGLE_POKEMON_TOWER_7F_CHANNELER ; marcelnote - added 7FChanneler
	ld [wToggleableObjectIndex], a
	predef ShowObject
	SetEvent EVENT_GOT_POKE_FLUTE
	ld hl, .ReceivedPokeFluteText
.printText
	call PrintText
	rst TextScriptEnd

.IThinkThisMayHelpYourQuestText:
	text_far _MrFujisHouseMrFujiIThinkThisMayHelpYourQuestText
	text_end

.ReceivedPokeFluteText:
	text_far _MrFujisHouseMrFujiReceivedPokeFluteText
	sound_get_key_item
	text_far _MrFujisHouseMrFujiPokeFluteExplanationText
	text_end

.MakeRoomText:
	text_far _MrFujisHouseMrFujiMakeRoomText
	text_end

.HasMyFluteHelpedYouText:
	text_far _MrFujisHouseMrFujiHasMyFluteHelpedYouText
	text_end

MrFujisHouseMrFujiPokedexText:
	text_far _MrFujisHouseMrFujiPokedexText
	text_end
