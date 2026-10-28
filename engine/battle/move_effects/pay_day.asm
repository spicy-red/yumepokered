PayDayEffect:
	xor a
	ld hl, wPayDayMoney
	ld [hli], a ; [wPayDayMoney] = 0

	ldh a, [hWhoseTurn]
	and a
	ld a, [wBattleMonLevel]
	jr z, .gotUserLevel ; jump on player's turn
	ld a, [wEnemyMonLevel]

.gotUserLevel
	; Calculate level * 16 using 16-bit HL.
	ld l, a
	ld h, 0
	add hl, hl ; level * 2
	add hl, hl ; level * 4
	add hl, hl ; level * 8
	add hl, hl ; level * 16

	; Store the full result in the 4-byte dividend.
	ld a, h
	ldh [hDividend + 2], a
	ld a, l
	ldh [hDividend + 3], a
	xor a
	ldh [hDividend], a
	ldh [hDividend + 1], a

	; Divide by 100 to get the number of hundreds.
	ld a, 100
	ldh [hDivisor], a
	call Divide

	; Keep the hundreds count while converting the remainder to tens and units.
	ldh a, [hQuotient + 3]
	ld b, a
	ldh a, [hRemainder]
	ldh [hDividend + 3], a
	ld a, 10
	ldh [hDivisor], a
	call Divide

	; Store tens and units as packed BCD.
	ld hl, wPayDayMoney + 2
	ldh a, [hQuotient + 3]
	swap a
	ld c, a
	ldh a, [hRemainder]
	add c
	ld [hl], a

	; Convert the hundreds count (0-16) to packed BCD.
	ld hl, wPayDayMoney + 1
	ld a, b
	cp 10
	jr c, .gotHundredsBCD
	sub 10
	ld b, a
	ld a, $10
	jr .storeHundredsBCD
.gotHundredsBCD
	xor a
.storeHundredsBCD
	or b
	ld [hl], a
	ld hl, wPayDayMoney + 2

	; Add payout to accumulated Payday money.
	ld de, wTotalPayDayMoney + 2
	ld c, 3
	predef AddBCDPredef

	ld hl, CoinsScatteredText
	jp PrintText

CoinsScatteredText:
	text_far _CoinsScatteredText
	text_end
	