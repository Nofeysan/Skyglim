#> stage:boss/2/move/4/root
# 
# 6方向にアイテム飛ばすやつ
# as boss at @s
# 

# effect
execute if score s2 BossMoves matches 200 run effect give @n[predicate=entity:entity_enemy, tag=boss, tag=s2] minecraft:slowness 3 50

# 召喚
execute if score s2 BossMoves matches 200 rotated 0 0 positioned ~ ~1 ~ run function stage:boss/2/move/4/item-1 {id: 1}
execute if score s2 BossMoves matches 202 rotated 60 0 positioned ~ ~1 ~ run function stage:boss/2/move/4/item-1 {id: 2}
execute if score s2 BossMoves matches 204 rotated 120 0 positioned ~ ~1 ~ run function stage:boss/2/move/4/item-1 {id: 3}
execute if score s2 BossMoves matches 206 rotated 180 0 positioned ~ ~1 ~ run function stage:boss/2/move/4/item-1 {id: 4}
execute if score s2 BossMoves matches 208 rotated 240 0 positioned ~ ~1 ~ run function stage:boss/2/move/4/item-1 {id: 5}
execute if score s2 BossMoves matches 210 rotated 300 0 positioned ~ ~1 ~ run function stage:boss/2/move/4/item-1 {id: 6}

# 発射
execute if score s2 BossMoves matches 230 run function stage:boss/2/move/4/shoot

# damage 処理
execute if score s2 BossMoves matches 230..250 as @e[type=item, tag=gimmick.magma] at @s run function stage:boss/2/move/4/damage

# kill
execute if score s2 BossMoves matches 250 as @e[type=item, tag=gimmick.magma] at @s run function stage:boss/2/move/4/reset

# reset
execute if score s2 BossMoves matches 250.. run scoreboard players set s2 BossMoves 60
