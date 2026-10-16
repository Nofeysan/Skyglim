#> entity:aec_manager/perform/
# 
# 通常ダメージの場合は normal の二つのコメントアウトを解除
# 割合ダメージの場合は percent の三つのコメントアウトを解除し、割合を指定する (p)
# 

# effect
    particle minecraft:dust{color: 7255175, scale: 1.6} ~ ~ ~ 6 1 6 0.1 2400 force @a
    particle minecraft:dust{color: 9630628, scale: 1.6} ~ ~ ~ 6 1 6 0.1 2400 force @a
    playsound minecraft:entity.wither.hurt voice @a ~ ~ ~ 1.6 1

# damage
    # normal
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        data modify storage enemy: aec.damage.p set value 60
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
