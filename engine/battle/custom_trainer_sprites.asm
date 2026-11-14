CheckCustomTrainerSprite:
    ; Only apply to trainer Odo.
    ld a, [wTrainerClass]
    cp ODO
    ret nz

    ; Only replace Houndoom's artwork.
    ld a, [wEnemyMonSpecies2]
    cp HOUNDOOM
    ret nz

    ; Override enemy front sprite.
    ld hl, BumiPicFront
    ld a, l
    ld [wMonHPics], a
    ld a, h
    ld [wMonHPics + 1], a

    ; Set the graphics bank for Bumi.
    ld a, BANK(BumiPicFront)
    ld [wMonHPicBank], a

    ret