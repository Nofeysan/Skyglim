#> magic:act/tick/300005/root
# 
# as item at @s
# 
# 

# particle
particle minecraft:lava ~ ~ ~ 0.0 0.0 0.0 0 0

# 周囲にエンティティがいる or onGrond で着火
execute if entity @e[distance=..1, predicate=entity:entity_enemy] run return run function magic:act/tick/300005/trigger
execute if predicate damageapi:is_on_ground run return run function magic:act/tick/300005/trigger
