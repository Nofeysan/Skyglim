#> entity:aec_manager/perform/
# 
# 通常ダメージの場合は normal の二つのコメントアウトを解除
# 割合ダメージの場合は percent の三つのコメントアウトを解除し、割合を指定する (p)
# 

# effect
    particle minecraft:lava ~ ~1 ~ 2 2 2 0.1 40
    particle minecraft:dust{color: [0.745098039215686, 0.129411764705882, 0.32156862745098], scale: 2.0} ~ ~1 ~ 2 2 2 0.1 300
    playsound minecraft:entity.ender_dragon.hurt voice @a ~ ~ ~ 0.2 1
    playsound minecraft:entity.evoker.cast_spell voice @a ~ ~ ~ 0.4 1
    summon minecraft:area_effect_cloud ~ ~0.5 ~ {RadiusOnUse: 0, Radius: 2.5, RadiusPerTick: 0, WaitTime: 0, Duration: 200, potion_contents: {custom_effects: [{id: "minecraft:weakness", amplifier: 15, duration: 40}, {id: "minecraft:hunger", amplifier: 127, duration: 80}, {id: "minecraft:blindness", amplifier: 15, duration: 20}]}, custom_particle: {type: "minecraft:block", block_state: {Name: "minecraft:stone_bricks"}}}

# damage    
    # normal
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        data modify storage enemy: aec.damage.p set value 50
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
