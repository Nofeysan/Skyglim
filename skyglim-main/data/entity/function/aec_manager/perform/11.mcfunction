#> entity:aec_manager/perform/9999
# 
# 
# 
# 

# effect
    particle minecraft:cloud ~ ~ ~ 4 0.3 4 0.2 200 force @a
    particle minecraft:wax_off ~ ~ ~ 0.8 15 0.8 0.2 300 force @a

# damage
    # square
    execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage

    # circle
    execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage
