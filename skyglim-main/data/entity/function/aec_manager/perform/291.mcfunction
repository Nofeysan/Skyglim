#> entity:aec_manager/perform/
# 
# 通常ダメージの場合は normal の二つのコメントアウトを解除
# 割合ダメージの場合は percent の三つのコメントアウトを解除し、割合を指定する (p)
# 

# effect
    particle minecraft:end_rod ~ ~ ~ 1 1 1 0.06 120
    playsound minecraft:entity.wither.hurt voice @a ~ ~ ~ 0.15 1
    playsound minecraft:entity.firework_rocket.blast voice @a ~ ~ ~ 0.4 1
    summon minecraft:area_effect_cloud ~ ~0.3 ~ {RadiusOnUse: 0, Radius: 2, RadiusPerTick: 0, WaitTime: 0, Duration: 200, potion_contents: {custom_effects: [{id: "minecraft:slowness", amplifier: 3, duration: 40}, {id: "minecraft:blindness", duration: 30, amplifier: 0}]}, custom_particle: {type: "minecraft:dust", color: 16766760, scale: 0.8}}

# damage    
    # normal
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        #data modify storage enemy: aec.damage.p set value 
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
