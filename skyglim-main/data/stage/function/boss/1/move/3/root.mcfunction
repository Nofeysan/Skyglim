#> stage:boss/1/move/3/root
# 
# 移動速度上昇
# 
# 

# aec
effect give @n[predicate=entity:entity_enemy, tag=boss, tag=s1] minecraft:speed 7 2

# score
scoreboard players set @n[predicate=entity:entity_enemy, tag=boss, tag=s1] BossMoves 0
