#> stage:boss/1/tick
# 
# boss 中常に実行するコマンド群
# 
# 

# data get
data modify storage boss: stage.2 set from entity @n[predicate=entity:entity_enemy, tag=boss, tag=s2] data

# HP 表示
execute store result bossbar minecraft:stage2.boss max run data get storage boss: stage.2.status.max_hp
execute store result bossbar minecraft:stage2.boss value run data get storage boss: stage.2.status.current_hp

# 行動
scoreboard players add s2 BossMoves 1
execute if score s2 BossMoves matches 200 at @n[predicate=entity:entity_enemy, tag=boss, tag=s2] run function stage:boss/2/move/root
#execute if score s2 BossMoves matches 200.. if score s1-type BossMoves matches 5 at @n[predicate=entity:entity_enemy, tag=boss, tag=s2] run function stage:boss/2/move/5/root
