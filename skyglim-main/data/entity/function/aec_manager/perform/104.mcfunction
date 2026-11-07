#> entity:aec_manager/perform/
# 
# 通常ダメージの場合は normal の二つのコメントアウトを解除
# 割合ダメージの場合は percent の三つのコメントアウトを解除し、割合を指定する (p)
# 

# effect
    particle minecraft:wax_off ~ ~ ~ 1.3 0.5 1.3 0.1 120
    particle minecraft:end_rod ~ ~2 ~ 0.3 5 0.3 0.05 120
    playsound minecraft:item.trident.thunder voice @a ~ ~ ~ 0.3 2

# damage
    # normal
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        #data modify storage enemy: aec.damage.p set value 
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
