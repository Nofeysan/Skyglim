#> entity:aec_manager/perform/
# 
# 通常ダメージの場合は normal の二つのコメントアウトを解除
# 割合ダメージの場合は percent の三つのコメントアウトを解除し、割合を指定する (p)
# 

# effect
    particle minecraft:cloud ~ ~2 ~ 2 2 2 0.1 130
    particle minecraft:dust{color: [0.772549019607843, 0.929411764705882, 1], scale: 2.5} ~ ~1 ~ 3 2 3 0.1 320
    playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 0.2 1
    playsound minecraft:block.glass.break voice @a ~ ~ ~ 0.4 1
    summon minecraft:area_effect_cloud ~ ~0.5 ~ {RadiusOnUse: 0, Radius: 6.5, RadiusPerTick: 0, WaitTime: 0, Duration: 200, potion_contents: {custom_effects: [{id: "minecraft:slowness", amplifier: 15, duration: 40}]}, custom_particle: {type: "minecraft:block", block_state: {Name: "minecraft:light_blue_stained_glass"}}}

# damage
    # normal
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        #data modify storage enemy: aec.damage.p set value 10
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
