#> entity:aec_manager/perform/
# 
# 通常ダメージの場合は normal の二つのコメントアウトを解除
# 割合ダメージの場合は percent の三つのコメントアウトを解除し、割合を指定する (p)
# 

# effect
    particle minecraft:end_rod ~ ~1 ~ 0.1 3 0.1 0.03 100
    particle minecraft:wax_off ~ ~0.5 ~ 2 1 2 0.1 200
    playsound minecraft:item.trident.thunder voice @a ~ ~ ~ 0.3 2
    effect give @a[distance=..4.5] minecraft:slowness 7 1
    summon minecraft:area_effect_cloud ~ ~0.5 ~ {RadiusOnUse: 0, Radius: 6, RadiusPerTick: 0, WaitTime: 0, Duration: 200, potion_contents: {custom_effects: [{id: "minecraft:slowness", amplifier: 15, duration: 40}, {id: "minecraft:weakness", amplifier: 15, duration: 40}]}, custom_particle: {type: "minecraft:block", block_state: {Name: "minecraft:oak_leaves"}}}

# damage    
    # normal
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        #data modify storage enemy: aec.damage.p set value 
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
