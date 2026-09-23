#> entity:aec_manager/perform/9999
# 
# 
# 
# 

# effect
    particle minecraft:damage_indicator ~ ~ ~ 1.5 1 1.5 0.1 120 force @a
    playsound minecraft:entity.evoker.cast_spell voice @a ~ ~ ~ 0.7 1

# damage
    # square
    execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage

    # circle
    execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage
