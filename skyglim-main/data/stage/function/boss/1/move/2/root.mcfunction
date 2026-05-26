#> stage:boss/1/move/2/root
# 
# 各プレイヤーの足元に AEC
# 
# 

# aec
execute at @n[predicate=entity:entity_enemy, tag=boss, tag=s1] at @a[distance=..30] run function entity:aec_manager/summon/.square {r: 8, t: 100, dmg: 15, str: 10}

# score
scoreboard players set @n[predicate=entity:entity_enemy, tag=boss, tag=s1] BossMoves 0
