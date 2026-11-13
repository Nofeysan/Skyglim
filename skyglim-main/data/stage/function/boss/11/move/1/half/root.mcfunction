#> stage:boss/11/move/1/root
# 
# 6方向にアイテム飛ばすやつ
# as boss at @s
# 

# effect
execute if score s11 BossMoves matches 200 run effect give @n[predicate=entity:entity_enemy, tag=boss, tag=s11] minecraft:slowness 8 50

# 召喚
    # 0 +10n
    execute if score s11 BossMoves matches 200 rotated 0 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 1}
    execute if score s11 BossMoves matches 205 rotated 10 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 2}
    execute if score s11 BossMoves matches 210 rotated 20 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 3}
    execute if score s11 BossMoves matches 215 rotated 30 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 4}
    execute if score s11 BossMoves matches 220 rotated 40 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 5}
    execute if score s11 BossMoves matches 225 rotated 50 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 6}
    execute if score s11 BossMoves matches 230 rotated 60 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 7}
    execute if score s11 BossMoves matches 235 rotated 70 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 8}
    execute if score s11 BossMoves matches 240 rotated 80 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 9}
    execute if score s11 BossMoves matches 245 rotated 90 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 10}
    execute if score s11 BossMoves matches 250 rotated 100 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 11}
    execute if score s11 BossMoves matches 255 rotated 110 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 12}
    execute if score s11 BossMoves matches 260 rotated 120 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 13}
    execute if score s11 BossMoves matches 265 rotated 130 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 14}
    execute if score s11 BossMoves matches 270 rotated 140 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 15}
    execute if score s11 BossMoves matches 275 rotated 150 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 16}
    execute if score s11 BossMoves matches 280 rotated 160 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 17}
    execute if score s11 BossMoves matches 285 rotated 170 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 18}
    execute if score s11 BossMoves matches 290 rotated 180 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 19}

    execute if score s11 BossMoves matches 240 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=1] Motion set value [0.0, 0.0, 2.5]
    execute if score s11 BossMoves matches 245 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=2] Motion set value [-0.43412, 0.0, 2.46202]
    execute if score s11 BossMoves matches 250 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=3] Motion set value [-0.85505, 0.0, 2.34923]
    execute if score s11 BossMoves matches 255 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=4] Motion set value [-1.25, 0.0, 2.16506]
    execute if score s11 BossMoves matches 260 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=5] Motion set value [-1.60697, 0.0, 1.91511]
    execute if score s11 BossMoves matches 265 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=6] Motion set value [-1.91511, 0.0, 1.60697]
    execute if score s11 BossMoves matches 270 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=7] Motion set value [-2.16506, 0.0, 1.25]
    execute if score s11 BossMoves matches 275 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=8] Motion set value [-2.34923, 0.0, 0.85505]
    execute if score s11 BossMoves matches 280 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=9] Motion set value [-2.46202, 0.0, 0.43412]
    execute if score s11 BossMoves matches 285 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=10] Motion set value [-2.5, 0.0, 0.0]
    execute if score s11 BossMoves matches 290 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=11] Motion set value [-2.46202, 0.0, -0.43412]
    execute if score s11 BossMoves matches 295 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=12] Motion set value [-2.34923, 0.0, -0.85505]
    execute if score s11 BossMoves matches 300 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=13] Motion set value [-2.16506, 0.0, -1.25]
    execute if score s11 BossMoves matches 305 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=14] Motion set value [-1.91511, 0.0, -1.60697]
    execute if score s11 BossMoves matches 310 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=15] Motion set value [-1.60697, 0.0, -1.91511]
    execute if score s11 BossMoves matches 315 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=16] Motion set value [-1.25, 0.0, -2.16506]
    execute if score s11 BossMoves matches 320 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=17] Motion set value [-0.85505, 0.0, -2.34923]
    execute if score s11 BossMoves matches 325 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=18] Motion set value [-0.43412, 0.0, -2.46202]
    execute if score s11 BossMoves matches 330 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=19] Motion set value [0.0, 0.0, -2.5]

    # 180 +10n
    execute if score s11 BossMoves matches 200 rotated 180 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 101}
    execute if score s11 BossMoves matches 205 rotated 190 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 102}
    execute if score s11 BossMoves matches 210 rotated 200 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 103}
    execute if score s11 BossMoves matches 215 rotated 210 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 104}
    execute if score s11 BossMoves matches 220 rotated 220 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 105}
    execute if score s11 BossMoves matches 225 rotated 230 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 106}
    execute if score s11 BossMoves matches 230 rotated 240 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 107}
    execute if score s11 BossMoves matches 235 rotated 250 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 108}
    execute if score s11 BossMoves matches 240 rotated 260 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 109}
    execute if score s11 BossMoves matches 245 rotated 270 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 110}
    execute if score s11 BossMoves matches 250 rotated 280 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 111}
    execute if score s11 BossMoves matches 255 rotated 290 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 112}
    execute if score s11 BossMoves matches 260 rotated 300 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 113}
    execute if score s11 BossMoves matches 265 rotated 310 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 114}
    execute if score s11 BossMoves matches 270 rotated 320 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 115}
    execute if score s11 BossMoves matches 275 rotated 330 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 116}
    execute if score s11 BossMoves matches 280 rotated 340 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 117}
    execute if score s11 BossMoves matches 285 rotated 350 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 118}
    execute if score s11 BossMoves matches 290 rotated 360 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/half/item {id: 119}

    execute if score s11 BossMoves matches 240 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=101] Motion set value [0.0, 0.0, -2.5]
    execute if score s11 BossMoves matches 245 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=102] Motion set value [0.43412, 0.0, -2.46202]
    execute if score s11 BossMoves matches 250 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=103] Motion set value [0.85505, 0.0, -2.34923]
    execute if score s11 BossMoves matches 255 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=104] Motion set value [1.25, 0.0, -2.16506]
    execute if score s11 BossMoves matches 260 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=105] Motion set value [1.60697, 0.0, -1.91511]
    execute if score s11 BossMoves matches 265 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=106] Motion set value [1.91511, 0.0, -1.60697]
    execute if score s11 BossMoves matches 270 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=107] Motion set value [2.16506, 0.0, -1.25]
    execute if score s11 BossMoves matches 275 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=108] Motion set value [2.34923, 0.0, -0.85505]
    execute if score s11 BossMoves matches 280 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=109] Motion set value [2.46202, 0.0, -0.43412]
    execute if score s11 BossMoves matches 285 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=110] Motion set value [2.5, 0.0, 0.0]
    execute if score s11 BossMoves matches 290 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=111] Motion set value [2.46202, 0.0, 0.43412]
    execute if score s11 BossMoves matches 295 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=112] Motion set value [2.34923, 0.0, 0.85505]
    execute if score s11 BossMoves matches 300 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=113] Motion set value [2.16506, 0.0, 1.25]
    execute if score s11 BossMoves matches 305 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=114] Motion set value [1.91511, 0.0, 1.60697]
    execute if score s11 BossMoves matches 310 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=115] Motion set value [1.60697, 0.0, 1.91511]
    execute if score s11 BossMoves matches 315 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=116] Motion set value [1.25, 0.0, 2.16506]
    execute if score s11 BossMoves matches 320 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=117] Motion set value [0.85505, 0.0, 2.34923]
    execute if score s11 BossMoves matches 325 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=118] Motion set value [0.43412, 0.0, 2.46202]
    execute if score s11 BossMoves matches 330 run data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=119] Motion set value [0.0, 0.0, 2.5]

# damage 処理
execute if score s11 BossMoves matches 240..350 as @e[type=item, tag=gimmick.magma] at @s run function stage:boss/11/move/1/half/damage

# kill
execute if score s11 BossMoves matches 350 as @e[type=item, tag=gimmick.magma] at @s run function stage:boss/11/move/1/half/reset

# reset
execute if score s11 BossMoves matches 350.. run scoreboard players set s11 BossMoves 60
