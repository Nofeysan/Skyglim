#> entity:aec_manager/perform/
# 
# 通常ダメージの場合は normal の二つのコメントアウトを解除
# 割合ダメージの場合は percent の三つのコメントアウトを解除し、割合を指定する (p)
# 

# effect
    particle minecraft:dust{color: 6147243, scale: 2.4} ~ ~ ~ 1.7 1.5 1.7 0 240
    playsound minecraft:entity.ender_dragon.hurt voice @a ~ ~ ~ 0.2 1
    playsound minecraft:entity.firework_rocket.blast voice @a ~ ~ ~ 0.4 1
    summon minecraft:area_effect_cloud ~ ~0.3 ~ {RadiusOnUse: 0, Radius: 3.5, RadiusPerTick: 0, WaitTime: 0, Duration: 240, potion_contents: {custom_effects: [{id: "minecraft:slowness", amplifier: 3, duration: 40}, {id: "minecraft:blindness", duration: 30, amplifier: 0}]}, custom_particle: {type: "minecraft:dust", color: 15357190, scale: 0.8}}

# damage    
    # normal
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        #data modify storage enemy: aec.damage.p set value 
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
