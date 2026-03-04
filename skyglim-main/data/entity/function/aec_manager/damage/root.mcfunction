#> entity:aec_manager/damage/root
# 
# 
# 
# 

# data
data modify storage enemy: aec.damage set from entity @s data

# effect
particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 200 force @a

# damage
function entity:aec_manager/damage/dealt with storage enemy: aec.damage

# kill
kill @e[distance=..0.1, type=minecraft:block_display]
