#> magic:act/tick/300005/root
# 
# as item at @s
# 
# 

# particle
#particle minecraft:lava ~ ~ ~ 0.0 0.0 0.0 0 0
particle minecraft:dust{color: [0.745098039215686, 0.129411764705882, 0.32156862745098], scale: 1.4} ~ ~ ~ 0.1 0.1 0.1 0 3
particle minecraft:dust{color: [0.917647058823529, 0.333333333333333, 0.0235294117647059], scale: 1.4} ~ ~ ~ 0.1 0.1 0.1 0 3

# 周囲にエンティティがいる or onGrond で着火
execute if entity @e[distance=..1.5, predicate=entity:entity_enemy] run return run function magic:act/tick/300005/trigger
execute if predicate damageapi:is_on_ground run return run function magic:act/tick/300005/trigger
