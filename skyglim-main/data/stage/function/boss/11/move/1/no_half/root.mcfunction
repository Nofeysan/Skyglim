#> stage:boss/11/move/1/no_half/root
# 
# 6方向にアイテム飛ばすやつ
# as boss at @s
# 

# effect
execute if score s11 BossMoves matches 200 run effect give @n[predicate=entity:entity_enemy, tag=boss, tag=s11] minecraft:slowness 5 50

# 召喚
execute if score s11 BossMoves matches 200 rotated 0 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/no_half/item-1 {id: 1}
execute if score s11 BossMoves matches 202 rotated 60 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/no_half/item-1 {id: 2}
execute if score s11 BossMoves matches 204 rotated 120 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/no_half/item-1 {id: 3}
execute if score s11 BossMoves matches 206 rotated 180 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/no_half/item-1 {id: 4}
execute if score s11 BossMoves matches 208 rotated 240 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/no_half/item-1 {id: 5}
execute if score s11 BossMoves matches 210 rotated 300 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/no_half/item-1 {id: 6}

execute if score s11 BossMoves matches 220 rotated 30 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/no_half/item-2 {id: 11}
execute if score s11 BossMoves matches 222 rotated 90 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/no_half/item-2 {id: 12}
execute if score s11 BossMoves matches 224 rotated 150 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/no_half/item-2 {id: 13}
execute if score s11 BossMoves matches 226 rotated 210 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/no_half/item-2 {id: 14}
execute if score s11 BossMoves matches 228 rotated 270 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/no_half/item-2 {id: 15}
execute if score s11 BossMoves matches 230 rotated 330 0 positioned ~ ~1 ~ run function stage:boss/11/move/1/no_half/item-2 {id: 16}

# 発射
execute if score s11 BossMoves matches 240 run function stage:boss/11/move/1/no_half/shoot_1
execute if score s11 BossMoves matches 260 run function stage:boss/11/move/1/no_half/shoot_2

# damage 処理
execute if score s11 BossMoves matches 240..280 as @e[type=item, tag=gimmick.magma] at @s run function stage:boss/11/move/1/no_half/damage

# kill
execute if score s11 BossMoves matches 280 as @e[type=item, tag=gimmick.magma] at @s run function stage:boss/11/move/1/no_half/reset

# reset
execute if score s11 BossMoves matches 280.. run scoreboard players set s11 BossMoves 60
