#> stage:boss/1/move/4/root
# 
# 移動速度上昇
# 
# 

# tp
tp @n[predicate=entity:entity_enemy, tag=boss, tag=s4] @a[distance=..20, sort=furthest, limit=1]

# effect
playsound minecraft:entity.player.teleport voice @a ~ ~ ~ 0.7 1
particle minecraft:dragon_breath ~ ~ ~ 0.7 1.4 0.7 0.1 180 force @a
effect give @a[distance=..3] minecraft:blindness 2 0

# score
scoreboard players set s4 BossMoves 100
