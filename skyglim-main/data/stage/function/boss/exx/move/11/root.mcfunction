#> stage:boss/11/move/1/root
# 
# 6方向にアイテム飛ばすやつ
# as boss at @s
# 

# effect
execute if score exx BossMoves matches 200 run effect give @n[predicate=entity:entity_enemy, tag=boss, tag=exx] minecraft:slowness 12 50

# sound
    scoreboard players operation _ _ = exx BossMoves
    scoreboard players operation _ _ %= #5 num

    execute if score exx BossMoves matches 200..880 if score _ _ matches 0 as @a[distance=..50] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
    execute if score exx BossMoves matches 240..920 if score _ _ matches 0 as @a[distance=..50] at @s run playsound minecraft:entity.wither.shoot voice @s ~ ~ ~ 0.3 2

# 召喚
    # 0 +10n
    execute if score exx BossMoves matches 200 rotated 0 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 1}
    execute if score exx BossMoves matches 205 rotated 10 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 2}
    execute if score exx BossMoves matches 210 rotated 20 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 3}
    execute if score exx BossMoves matches 215 rotated 30 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 4}
    execute if score exx BossMoves matches 220 rotated 40 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 5}
    execute if score exx BossMoves matches 225 rotated 50 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 6}
    execute if score exx BossMoves matches 230 rotated 60 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 7}
    execute if score exx BossMoves matches 235 rotated 70 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 8}
    execute if score exx BossMoves matches 240 rotated 80 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 9}
    execute if score exx BossMoves matches 245 rotated 90 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 10}
    execute if score exx BossMoves matches 250 rotated 100 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 11}
    execute if score exx BossMoves matches 255 rotated 110 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 12}
    execute if score exx BossMoves matches 260 rotated 120 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 13}
    execute if score exx BossMoves matches 265 rotated 130 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 14}
    execute if score exx BossMoves matches 270 rotated 140 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 15}
    execute if score exx BossMoves matches 275 rotated 150 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 16}
    execute if score exx BossMoves matches 280 rotated 160 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 17}
    execute if score exx BossMoves matches 285 rotated 170 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 18}
    execute if score exx BossMoves matches 290 rotated 180 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 19}
    execute if score exx BossMoves matches 295 rotated 190 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 20}
    execute if score exx BossMoves matches 300 rotated 200 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 21}
    execute if score exx BossMoves matches 305 rotated 210 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 22}
    execute if score exx BossMoves matches 310 rotated 220 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 23}
    execute if score exx BossMoves matches 315 rotated 230 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 24}
    execute if score exx BossMoves matches 320 rotated 240 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 25}
    execute if score exx BossMoves matches 325 rotated 250 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 26}
    execute if score exx BossMoves matches 330 rotated 260 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 27}
    execute if score exx BossMoves matches 335 rotated 270 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 28}
    execute if score exx BossMoves matches 340 rotated 280 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 29}
    execute if score exx BossMoves matches 345 rotated 290 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 30}
    execute if score exx BossMoves matches 350 rotated 300 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 31}
    execute if score exx BossMoves matches 355 rotated 310 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 32}
    execute if score exx BossMoves matches 360 rotated 320 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 33}
    execute if score exx BossMoves matches 365 rotated 330 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 34}
    execute if score exx BossMoves matches 370 rotated 340 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 35}
    execute if score exx BossMoves matches 375 rotated 350 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 36}
    execute if score exx BossMoves matches 380 rotated 360 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 37}

    execute if score exx BossMoves matches 240 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=1] Motion set value [0.0, 0.0, 2.5]
    execute if score exx BossMoves matches 245 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=2] Motion set value [-0.43412, 0.0, 2.46202]
    execute if score exx BossMoves matches 250 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=3] Motion set value [-0.85505, 0.0, 2.34923]
    execute if score exx BossMoves matches 255 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=4] Motion set value [-1.25, 0.0, 2.16506]
    execute if score exx BossMoves matches 260 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=5] Motion set value [-1.60697, 0.0, 1.91511]
    execute if score exx BossMoves matches 265 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=6] Motion set value [-1.91511, 0.0, 1.60697]
    execute if score exx BossMoves matches 270 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=7] Motion set value [-2.16506, 0.0, 1.25]
    execute if score exx BossMoves matches 275 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=8] Motion set value [-2.34923, 0.0, 0.85505]
    execute if score exx BossMoves matches 280 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=9] Motion set value [-2.46202, 0.0, 0.43412]
    execute if score exx BossMoves matches 285 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=10] Motion set value [-2.5, 0.0, 0.0]
    execute if score exx BossMoves matches 290 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=11] Motion set value [-2.46202, 0.0, -0.43412]
    execute if score exx BossMoves matches 295 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=12] Motion set value [-2.34923, 0.0, -0.85505]
    execute if score exx BossMoves matches 300 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=13] Motion set value [-2.16506, 0.0, -1.25]
    execute if score exx BossMoves matches 305 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=14] Motion set value [-1.91511, 0.0, -1.60697]
    execute if score exx BossMoves matches 310 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=15] Motion set value [-1.60697, 0.0, -1.91511]
    execute if score exx BossMoves matches 315 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=16] Motion set value [-1.25, 0.0, -2.16506]
    execute if score exx BossMoves matches 320 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=17] Motion set value [-0.85505, 0.0, -2.34923]
    execute if score exx BossMoves matches 325 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=18] Motion set value [-0.43412, 0.0, -2.46202]
    execute if score exx BossMoves matches 330 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=19] Motion set value [0.0, 0.0, -2.5]
    execute if score exx BossMoves matches 335 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=20] Motion set value [0.43412, 0.0, -2.46202]
    execute if score exx BossMoves matches 340 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=21] Motion set value [0.85505, 0.0, -2.34923]
    execute if score exx BossMoves matches 345 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=22] Motion set value [1.25, 0.0, -2.16506]
    execute if score exx BossMoves matches 350 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=23] Motion set value [1.60697, 0.0, -1.91511]
    execute if score exx BossMoves matches 355 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=24] Motion set value [1.91511, 0.0, -1.60697]
    execute if score exx BossMoves matches 360 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=25] Motion set value [2.16506, 0.0, -1.25]
    execute if score exx BossMoves matches 365 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=26] Motion set value [2.34923, 0.0, -0.85505]
    execute if score exx BossMoves matches 370 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=27] Motion set value [2.46202, 0.0, -0.43412]
    execute if score exx BossMoves matches 375 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=28] Motion set value [2.5, 0.0, 0.0]
    execute if score exx BossMoves matches 380 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=29] Motion set value [2.46202, 0.0, 0.43412]
    execute if score exx BossMoves matches 385 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=30] Motion set value [2.34923, 0.0, 0.85505]
    execute if score exx BossMoves matches 390 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=31] Motion set value [2.16506, 0.0, 1.25]
    execute if score exx BossMoves matches 395 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=32] Motion set value [1.91511, 0.0, 1.60697]
    execute if score exx BossMoves matches 400 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=33] Motion set value [1.60697, 0.0, 1.91511]
    execute if score exx BossMoves matches 405 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=34] Motion set value [1.25, 0.0, 2.16506]
    execute if score exx BossMoves matches 410 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=35] Motion set value [0.85505, 0.0, 2.34923]
    execute if score exx BossMoves matches 415 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=36] Motion set value [0.43412, 0.0, 2.46202]
    execute if score exx BossMoves matches 420 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=37] Motion set value [0.0, 0.0, 2.5]

    # 180 +10n
    execute if score exx BossMoves matches 200 rotated 180 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 101}
    execute if score exx BossMoves matches 205 rotated 190 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 102}
    execute if score exx BossMoves matches 210 rotated 200 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 103}
    execute if score exx BossMoves matches 215 rotated 210 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 104}
    execute if score exx BossMoves matches 220 rotated 220 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 105}
    execute if score exx BossMoves matches 225 rotated 230 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 106}
    execute if score exx BossMoves matches 230 rotated 240 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 107}
    execute if score exx BossMoves matches 235 rotated 250 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 108}
    execute if score exx BossMoves matches 240 rotated 260 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 109}
    execute if score exx BossMoves matches 245 rotated 270 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 110}
    execute if score exx BossMoves matches 250 rotated 280 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 111}
    execute if score exx BossMoves matches 255 rotated 290 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 112}
    execute if score exx BossMoves matches 260 rotated 300 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 113}
    execute if score exx BossMoves matches 265 rotated 310 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 114}
    execute if score exx BossMoves matches 270 rotated 320 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 115}
    execute if score exx BossMoves matches 275 rotated 330 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 116}
    execute if score exx BossMoves matches 280 rotated 340 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 117}
    execute if score exx BossMoves matches 285 rotated 350 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 118}
    execute if score exx BossMoves matches 290 rotated 360 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 119}
    execute if score exx BossMoves matches 295 rotated 370 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 120}
    execute if score exx BossMoves matches 300 rotated 380 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 121}
    execute if score exx BossMoves matches 305 rotated 390 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 122}
    execute if score exx BossMoves matches 310 rotated 400 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 123}
    execute if score exx BossMoves matches 315 rotated 410 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 124}
    execute if score exx BossMoves matches 320 rotated 420 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 125}
    execute if score exx BossMoves matches 325 rotated 430 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 126}
    execute if score exx BossMoves matches 330 rotated 440 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 127}
    execute if score exx BossMoves matches 335 rotated 450 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 128}
    execute if score exx BossMoves matches 340 rotated 460 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 129}
    execute if score exx BossMoves matches 345 rotated 470 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 130}
    execute if score exx BossMoves matches 350 rotated 480 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 131}
    execute if score exx BossMoves matches 355 rotated 490 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 132}
    execute if score exx BossMoves matches 360 rotated 500 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 133}
    execute if score exx BossMoves matches 365 rotated 510 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 134}
    execute if score exx BossMoves matches 370 rotated 520 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 135}
    execute if score exx BossMoves matches 375 rotated 530 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 136}
    execute if score exx BossMoves matches 380 rotated 540 0 positioned ~ ~1 ~ run function stage:boss/exx/move/11/item {id: 137}

    execute if score exx BossMoves matches 240 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=101] Motion set value [0.0, 0.0, -2.5]
    execute if score exx BossMoves matches 245 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=102] Motion set value [0.43412, 0.0, -2.46202]
    execute if score exx BossMoves matches 250 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=103] Motion set value [0.85505, 0.0, -2.34923]
    execute if score exx BossMoves matches 255 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=104] Motion set value [1.25, 0.0, -2.16506]
    execute if score exx BossMoves matches 260 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=105] Motion set value [1.60697, 0.0, -1.91511]
    execute if score exx BossMoves matches 265 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=106] Motion set value [1.91511, 0.0, -1.60697]
    execute if score exx BossMoves matches 270 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=107] Motion set value [2.16506, 0.0, -1.25]
    execute if score exx BossMoves matches 275 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=108] Motion set value [2.34923, 0.0, -0.85505]
    execute if score exx BossMoves matches 280 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=109] Motion set value [2.46202, 0.0, -0.43412]
    execute if score exx BossMoves matches 285 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=110] Motion set value [2.5, 0.0, 0.0]
    execute if score exx BossMoves matches 290 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=111] Motion set value [2.46202, 0.0, 0.43412]
    execute if score exx BossMoves matches 295 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=112] Motion set value [2.34923, 0.0, 0.85505]
    execute if score exx BossMoves matches 300 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=113] Motion set value [2.16506, 0.0, 1.25]
    execute if score exx BossMoves matches 305 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=114] Motion set value [1.91511, 0.0, 1.60697]
    execute if score exx BossMoves matches 310 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=115] Motion set value [1.60697, 0.0, 1.91511]
    execute if score exx BossMoves matches 315 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=116] Motion set value [1.25, 0.0, 2.16506]
    execute if score exx BossMoves matches 320 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=117] Motion set value [0.85505, 0.0, 2.34923]
    execute if score exx BossMoves matches 325 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=118] Motion set value [0.43412, 0.0, 2.46202]
    execute if score exx BossMoves matches 330 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=119] Motion set value [0.0, 0.0, 2.5]
    execute if score exx BossMoves matches 335 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=120] Motion set value [-0.43412, 0.0, 2.46202]
    execute if score exx BossMoves matches 340 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=121] Motion set value [-0.85505, 0.0, 2.34923]
    execute if score exx BossMoves matches 345 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=122] Motion set value [-1.25, 0.0, 2.16506]
    execute if score exx BossMoves matches 350 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=123] Motion set value [-1.60697, 0.0, 1.91511]
    execute if score exx BossMoves matches 355 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=124] Motion set value [-1.91511, 0.0, 1.60697]
    execute if score exx BossMoves matches 360 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=125] Motion set value [-2.16506, 0.0, 1.25]
    execute if score exx BossMoves matches 365 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=126] Motion set value [-2.34923, 0.0, 0.85505]
    execute if score exx BossMoves matches 370 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=127] Motion set value [-2.46202, 0.0, 0.43412]
    execute if score exx BossMoves matches 375 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=128] Motion set value [-2.5, 0.0, 0.0]
    execute if score exx BossMoves matches 380 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=129] Motion set value [-2.46202, 0.0, -0.43412]
    execute if score exx BossMoves matches 385 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=130] Motion set value [-2.34923, 0.0, -0.85505]
    execute if score exx BossMoves matches 390 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=131] Motion set value [-2.16506, 0.0, -1.25]
    execute if score exx BossMoves matches 395 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=132] Motion set value [-1.91511, 0.0, -1.60697]
    execute if score exx BossMoves matches 400 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=133] Motion set value [-1.60697, 0.0, -1.91511]
    execute if score exx BossMoves matches 405 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=134] Motion set value [-1.25, 0.0, -2.16506]
    execute if score exx BossMoves matches 410 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=135] Motion set value [-0.85505, 0.0, -2.34923]
    execute if score exx BossMoves matches 415 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=136] Motion set value [-0.43412, 0.0, -2.46202]
    execute if score exx BossMoves matches 420 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=137] Motion set value [0.0, 0.0, -2.5]

# damage 処理
execute if score exx BossMoves matches 240..420 as @e[type=item, tag=gimmick.magma, distance=..50] at @s run function stage:boss/exx/move/init/2/round/damage

# AoE
execute if score exx BossMoves matches 200 at @a[distance=..50] positioned ~ 240 ~ run function entity:aec_manager/summon/.cyl {r: 9, t: 60, dmg: 16, str: 18, id: 293}
execute if score exx BossMoves matches 260 at @a[distance=..50] positioned ~ 240 ~ run function entity:aec_manager/summon/.cyl {r: 9, t: 60, dmg: 16, str: 18, id: 293}
execute if score exx BossMoves matches 320 at @a[distance=..50] positioned ~ 240 ~ run function entity:aec_manager/summon/.cyl {r: 9, t: 60, dmg: 16, str: 18, id: 293}
execute if score exx BossMoves matches 380 at @a[distance=..50] positioned ~ 240 ~ run function entity:aec_manager/summon/.cyl {r: 9, t: 60, dmg: 16, str: 18, id: 293}

# kill
execute if score exx BossMoves matches 440 as @e[type=item, tag=gimmick.magma, distance=..50] at @s run function stage:boss/exx/move/init/2/round/reset

# score
execute if score exx BossMoves matches 460.. run scoreboard players set exx BossMoves 40
