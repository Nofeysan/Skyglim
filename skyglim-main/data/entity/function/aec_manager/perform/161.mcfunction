#> entity:aec_manager/perform/
# 
# 通常ダメージの場合は normal の二つのコメントアウトを解除
# 割合ダメージの場合は percent の三つのコメントアウトを解除し、割合を指定する (p)
# 

# effect
    particle minecraft:end_rod ~ ~0.5 ~ 1 1 1 0.1 200
    particle minecraft:dust{color: 5027246, scale: 1.6} ~ ~0.5 ~ 1.5 1 1.5 0.1 240
    particle minecraft:crit ~ ~ ~ 0.1 8 0.1 0.1 200
    execute as @a[distance=..80] at @s run playsound minecraft:entity.firework_rocket.blast voice @a ~ ~ ~ 1 1
    execute as @a[distance=..80] at @s run playsound minecraft:entity.phantom.hurt voice @a ~ ~ ~ 0.4 1
    summon minecraft:area_effect_cloud ~ ~0.5 ~ {RadiusOnUse: 0, Radius: 3.5, RadiusPerTick: 0, WaitTime: 0, Duration: 200, potion_contents: {custom_effects: [{id: "minecraft:slowness", amplifier: 9, duration: 100}, {id: "minecraft:mining_fatigue", amplifier: 1, duration: 100}, {id: "minecraft:instant_damage", amplifier: 1, duration: 100}, {id: "minecraft:hunger", amplifier: 127, duration: 100}]}, custom_particle: {type: "minecraft:dust", color: 9630628, scale: 0.8}}

# damage
    # normal
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        data modify storage enemy: aec.damage.p set value 25
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
