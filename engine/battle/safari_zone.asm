PrintSafariZoneBattleText:
	ld hl, wSafariBaitFactor
	ld a, [hl]
	and a
	jr z, .noBait
	dec [hl]
	ld hl, SafariZoneEatingText
	jr .done
.noBait
	ret
.done
	push hl
	call LoadScreenTilesFromBuffer1
	pop hl
	jp PrintText

SafariZoneEatingText:
	text_far _SafariZoneEatingText
	text_end

SafariZoneAngryText:
	text_far _SafariZoneAngryText
	text_end
