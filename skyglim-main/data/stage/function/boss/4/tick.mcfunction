#> stage:boss/1/tick
# 
# boss 中常に実行するコマンド群
# 
# 

# data get
data modify storage boss: stage.4 set from entity @n[predicate=entity:entity_enemy, tag=boss, tag=s4] data

# HP 表示
execute store result bossbar minecraft:stage4.boss max run data get storage boss: stage.4.status.max_hp
execute store result bossbar minecraft:stage4.boss value run data get storage boss: stage.4.status.current_hp

# 行動
scoreboard players add s4 BossMoves 1
execute if score s4 BossMoves matches 200 at @n[predicate=entity:entity_enemy, tag=boss, tag=s4] run function stage:boss/4/move/root
execute if score s4 BossMoves matches 200.. if score s4-type BossMoves matches 1 at @n[predicate=entity:entity_enemy, tag=boss, tag=s4] run function stage:boss/4/move/1/root
execute if score s4 BossMoves matches 200.. if score s4-type BossMoves matches 2 at @n[predicate=entity:entity_enemy, tag=boss, tag=s4] run function stage:boss/4/move/2/root
execute if score s4 BossMoves matches 200.. if score s4-type BossMoves matches 3 at @n[predicate=entity:entity_enemy, tag=boss, tag=s4] run function stage:boss/4/move/3/root
