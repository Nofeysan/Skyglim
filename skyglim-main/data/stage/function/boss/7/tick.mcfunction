#> stage:boss/1/tick
# 
# boss 中常に実行するコマンド群
# 
# 

# data get
data modify storage boss: stage.7 set from entity @n[predicate=entity:entity_enemy, tag=boss, tag=s7] data

# HP 表示
execute store result bossbar minecraft:stage7.boss max run data get storage boss: stage.7.status.max_hp
execute store result bossbar minecraft:stage7.boss value run data get storage boss: stage.7.status.current_hp

# 行動
scoreboard players add s7 BossMoves 1
execute if score s7 BossMoves matches 200 at @n[predicate=entity:entity_enemy, tag=boss, tag=s7] run function stage:boss/7/move/root
execute if score s7 BossMoves matches 200.. if score s7-type BossMoves matches 1 at @n[predicate=entity:entity_enemy, tag=boss, tag=s7] run function stage:boss/7/move/1/root
execute if score s7 BossMoves matches 200.. if score s7-type BossMoves matches 2 at @n[predicate=entity:entity_enemy, tag=boss, tag=s7] run function stage:boss/7/move/2/root
execute if score s7 BossMoves matches 200.. if score s7-type BossMoves matches 3 as @n[predicate=entity:entity_enemy, tag=boss, tag=s7] at @s run function stage:boss/7/move/3/root
