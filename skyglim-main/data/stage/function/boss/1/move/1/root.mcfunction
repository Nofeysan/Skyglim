#> stage:boss/1/move/1/root
# 
# でっかく AEC
# 
# 

# 自身は移動速度低下
effect give @n[predicate=entity:entity_enemy, tag=boss, tag=s1] minecraft:slowness 5 9

# aec
execute at @n[predicate=entity:entity_enemy, tag=boss, tag=s1] positioned ~ 11 ~ run function entity:aec_manager/summon/.square {r: 30, t: 100, dmg: 15, str: 10}

# effect
execute at @n[predicate=entity:entity_enemy, tag=boss, tag=s1] run playsound minecraft:entity.firework_rocket.shoot voice @a ~ ~ ~ 1 1

# score
scoreboard players set s1 BossMoves -60
