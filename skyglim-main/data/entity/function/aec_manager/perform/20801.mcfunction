#> entity:aec_manager/perform/
# 
# 通常ダメージの場合は normal の二つのコメントアウトを解除
# 割合ダメージの場合は percent の三つのコメントアウトを解除し、割合を指定する (p)
# 

# effect
    particle minecraft:end_rod ~ ~2 ~ 2 2 2 0.1 400
    particle minecraft:dust_color_transition{from_color: 12971519, to_color: 9630628, scale: 1.2} ~ ~2 ~ 2 2 2 0.1 300
    playsound minecraft:entity.firework_rocket.twinkle voice @a ~ ~ ~ 2 2
    playsound minecraft:block.fire.extinguish voice @a ~ ~ ~ 0.8 2
    playsound minecraft:block.anvil.place voice @a ~ ~ ~ 0.3 2

# damage    
    # normal
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        #data modify storage enemy: aec.damage.p set value 
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
