#> entity:aec_manager/perform/
# 
# 通常ダメージの場合は normal の二つのコメントアウトを解除
# 割合ダメージの場合は percent の三つのコメントアウトを解除し、割合を指定する (p)
# 

# effect
    particle minecraft:end_rod ~ ~1 ~ 0.1 5 0.1 0.03 80
    particle minecraft:dust{color: 15316272, scale: 1.2} ~ ~1 ~ 1 1 1 0.1 80
    playsound minecraft:entity.player.burp voice @a ~ ~ ~ 0.35 1.4
    playsound minecraft:block.amethyst_block.step voice @a ~ ~ ~ 0.6 1

# damage    
    # normal
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        data modify storage enemy: aec.damage.p set value 50
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
