#> entity:aec_manager/perform/
# 
# 通常ダメージの場合は normal の二つのコメントアウトを解除
# 割合ダメージの場合は percent の三つのコメントアウトを解除し、割合を指定する (p)
# 

# effect
    particle minecraft:explosion_emitter ~ ~ ~ 2 2 2 0.1 40 force @a
    playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 0.7 1.5

    summon minecraft:area_effect_cloud ~ ~ ~ {RadiusOnUse: 0, Radius: 5, RadiusPerTick: 0, WaitTime: 0, Duration: 200, potion_contents: {custom_effects: [{id: "minecraft:instant_damage", amplifier: 25, duration: 10}]}, custom_particle: {type: "minecraft:block", block_state: {Name: "minecraft:blackstone"}}}

# damage
    # normal
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        #data modify storage enemy: aec.damage.p set value 12
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
