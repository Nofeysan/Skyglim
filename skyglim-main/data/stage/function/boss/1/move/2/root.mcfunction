#> stage:boss/1/move/2/root
# 
# 各プレイヤーの足元に AEC
# 
# 

# aec
execute at @n[predicate=entity:entity_enemy, tag=boss, tag=s1] at @a[distance=..30] positioned ~ 12 ~ run function entity:aec_manager/summon/.square {r: 20, t: 80, dmg: 15, str: 10}

# sound
execute at @n[predicate=entity:entity_enemy, tag=boss, tag=s1] as @a at @s run playsound minecraft:entity.firework_rocket.launch voice @a ~ ~ ~ 1 1.5

# score
scoreboard players set s1 BossMoves 40
