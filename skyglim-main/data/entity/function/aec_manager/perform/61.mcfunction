#> entity:aec_manager/perform/9999
# 
# 
# 
# 

# effect
    particle minecraft:explosion ~ ~ ~ 4 2 4 0.1 1200 force @a
    playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 0.8 0.8

# damage
    # normal
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        data modify storage enemy: aec.damage.p set value 75
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
