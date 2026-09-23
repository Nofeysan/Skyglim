#> entity:aec_manager/perform/9999
# 
# 
# 
# 

# effect
    particle minecraft:crit ~ ~ ~ 0.3 3 0.3 0.1 250 force @a
    playsound minecraft:entity.firework_rocket.blast voice @a ~ ~ ~ 1.2 2

# damage
    # square
    execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage

    # circle
    execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage
