#> entity:aec_manager/perform/
# 
# 通常ダメージの場合は normal の二つのコメントアウトを解除
# 割合ダメージの場合は percent の三つのコメントアウトを解除し、割合を指定する (p)
# 

# effect
    particle minecraft:cloud ~ ~ ~ 1.3 0.5 1.3 0.1 120
    particle minecraft:dust{color: 16774776, scale: 1.8} ~ ~ ~ 1.3 0.5 1.3 0.1 120
    execute as @a[distance=..80] at @s run playsound minecraft:item.shield.block voice @a ~ ~ ~ 1 1
    execute as @a[distance=..80] at @s run playsound minecraft:item.trident.riptide_1 voice @a ~ ~ ~ 1.6 1

# damage
    # normal
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        #data modify storage enemy: aec.damage.p set value 20
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
