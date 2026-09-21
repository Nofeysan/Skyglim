#> stage:boss/1/tick
# 
# boss 中常に実行するコマンド群
# 
# 

# data get
data modify storage boss: stage.6 set from entity @n[predicate=entity:entity_enemy, tag=boss, tag=s6] data

# HP 表示
execute store result bossbar minecraft:stage6.boss max run data get storage boss: stage.6.status.max_hp
execute store result bossbar minecraft:stage6.boss value run data get storage boss: stage.6.status.current_hp

# 行動
scoreboard players add s6 BossMoves 1
execute if score s6 BossMoves matches 200 at @n[predicate=entity:entity_enemy, tag=boss, tag=s6] run function stage:boss/6/move/root
execute if score s6 BossMoves matches 200.. if score s6-type BossMoves matches 1 at @n[predicate=entity:entity_enemy, tag=boss, tag=s6] run function stage:boss/6/move/1/root
execute if score s6 BossMoves matches 200.. if score s6-type BossMoves matches 2 at @n[predicate=entity:entity_enemy, tag=boss, tag=s6] run function stage:boss/6/move/2/root
execute if score s6 BossMoves matches 200.. if score s6-type BossMoves matches 3 at @n[predicate=entity:entity_enemy, tag=boss, tag=s6] run function stage:boss/6/move/3/root
