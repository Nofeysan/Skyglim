#> entity:aec_manager/perform/9999
# 
# 
# 
# 

# effect
    particle minecraft:witch ~ ~ ~ 1 1 1 0.1 240 force @a

# damage
    # square
    execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage

    # circle
    execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage
