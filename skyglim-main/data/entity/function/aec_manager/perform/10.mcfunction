#> entity:aec_manager/perform/9999
# 
# 
# 
# 

# effect
    particle minecraft:block{block_state: {Name: "minecraft:blackstone"}} ~ ~ ~ 8 0.2 8 0.2 300 force @a
    particle minecraft:ash ~ ~ ~ 8 0.2 8 0.1 300 force @a
    playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 0.5 1.5
    playsound minecraft:block.anvil.place voice @a ~ ~ ~ 0.5 1.5

# damage
    # square
    execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage

    # circle
    execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage
