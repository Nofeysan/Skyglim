#> magic:act/tick/300005/trigger
# 
# 周囲の敵にダメージを与える
# 
# 

# tag
tag @s add 300005

# damage
execute as @e[distance=..2.5, predicate=entity:entity_enemy] at @s run damage @s 1 minecraft:magic by @n[type=minecraft:item, tag=300005]

# particle
particle minecraft:lava ~ ~ ~ 1.5 2 1.5 0.1 240
particle minecraft:explosion ~ ~ ~ 0.1 0.2 0.1 0.1 10

playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 0.5 1
playsound minecraft:block.fire.extinguish voice @a ~ ~ ~ 0.5 0.5

# kill
kill @s
