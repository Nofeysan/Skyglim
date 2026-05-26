#> stage:boss/1/move/3/root
# 
# 移動速度上昇
# 
# 

# effect
effect give @n[predicate=entity:entity_enemy, tag=boss, tag=s1] minecraft:speed 7 2
effect give @n[predicate=entity:entity_enemy, tag=boss, tag=s1] minecraft:slowness 1 99

# particle
execute at @n[predicate=entity:entity_enemy, tag=boss, tag=s1] run particle minecraft:sweep_attack ~ ~ ~ 1 2 1 0.1 120 force @a
execute at @n[predicate=entity:entity_enemy, tag=boss, tag=s1] run particle minecraft:dust{color: [0.266666666666667, 0.866666666666667, 0.956862745098039], scale: 0.95} ~ ~ ~ 1 2 1 0.1 360 force @a
execute at @n[predicate=entity:entity_enemy, tag=boss, tag=s1] run playsound minecraft:entity.wither.shoot voice @a ~ ~ ~ 0.8 1.5

# score
scoreboard players set s1 BossMoves 0
