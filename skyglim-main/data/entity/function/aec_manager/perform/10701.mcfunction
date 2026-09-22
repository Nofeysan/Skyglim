#> entity:aec_manager/perform/9999
# 
# 
# 
# 

# effect
    particle minecraft:sweep_attack ~ ~ ~ 4 1 4 0.1 160 force @a
    playsound minecraft:entity.wither.shoot voice @a ~ ~ ~ 0.5 1.5

# damage
    # square
    execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage

    # circle
    execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage
