#> entity:aec_manager/perform/
# 
# 通常ダメージの場合は normal の二つのコメントアウトを解除
# 割合ダメージの場合は percent の三つのコメントアウトを解除し、割合を指定する (p)
# 

# effect
    particle minecraft:dust{color: [0.772549019607843, 0.929411764705882, 1], scale: 1.8} ~ ~1 ~ 3 2 3 0.1 360
    particle minecraft:block{block_state: {Name: "minecraft:ice"}} ~ ~1 ~ 2 2 2 0.1 240
    playsound minecraft:entity.zombie.attack_wooden_door voice @a ~ ~ ~ 0.2 1
    playsound minecraft:block.glass.break voice @a ~ ~ ~ 0.4 1
    summon minecraft:area_effect_cloud ~ ~0.3 ~ {RadiusOnUse: 0, Radius: 3.5, RadiusPerTick: 0, WaitTime: 0, Duration: 200, potion_contents: {custom_effects: [{id: "minecraft:slowness", amplifier: 3, duration: 40}, {id: "minecraft:hunger", duration: 400, amplifier: 196}, {id: "minecraft:blindness", duration: 30, amplifier: 0}]}, custom_particle: {type: "minecraft:dust", color: 12378856, scale: 0.8}}

# damage    
    # normal
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        #data modify storage enemy: aec.damage.p set value 
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
