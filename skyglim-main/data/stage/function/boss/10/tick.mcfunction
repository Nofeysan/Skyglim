#> stage:boss/1/tick
# 
# boss 中常に実行するコマンド群
# 
# 

# data get
data modify storage boss: stage.10 set from entity @n[predicate=entity:entity_enemy, tag=boss, tag=s10] data

# HP 表示
execute store result bossbar minecraft:stage10.boss max run data get storage boss: stage.10.status.max_hp
execute store result bossbar minecraft:stage10.boss value run data get storage boss: stage.10.status.current_hp

# 行動
scoreboard players add s10 BossMoves 1
execute if score s10 BossMoves matches 200 at @n[predicate=entity:entity_enemy, tag=boss, tag=s10] run function stage:boss/10/move/root
execute if score s10 BossMoves matches 200.. if score s10-type BossMoves matches 1 at @n[predicate=entity:entity_enemy, tag=boss, tag=s10] run function stage:boss/10/move/1/root
execute if score s10 BossMoves matches 200.. if score s10-type BossMoves matches 2 at @n[predicate=entity:entity_enemy, tag=boss, tag=s10] run function stage:boss/10/move/2/root
execute if score s10 BossMoves matches 200.. if score s10-type BossMoves matches 3 as @n[predicate=entity:entity_enemy, tag=boss, tag=s10] at @s run function stage:boss/10/move/3/root

#* 
#* ステージに 1x1 x16, 2x2 x4 の中心となるアマスタを設置する
#* 
#* ==E====(1x1 | ==E====(2x2
#*  1  2  3  4 | 21 -- 22 --
#*  5  6  7  8 | -- -- -- --
#*  9 10 11 12 | 23 -- 24 --
#* 13 14 15 16 | -- -- -- --
#* 
