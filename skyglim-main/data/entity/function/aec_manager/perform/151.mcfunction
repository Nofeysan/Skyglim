#> entity:aec_manager/perform/
# 
# 通常ダメージの場合は normal の二つのコメントアウトを解除
# 割合ダメージの場合は percent の三つのコメントアウトを解除し、割合を指定する (p)
# 

# effect
    particle minecraft:end_rod ~ ~ ~ 0.2 10 0.2 0.01 200
    particle minecraft:dust{color: 16766760, scale: 1.8} ~ ~ ~ 2 0.5 2 0.1 200
    execute as @a[distance=..80] at @s run playsound minecraft:item.trident.thunder voice @a ~ ~ ~ 0.6 2
    execute as @a[distance=..80] at @s run playsound minecraft:entity.ender_eye.death voice @a ~ ~ ~ 1.2 1

# damage
    # normal
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        data modify storage enemy: aec.damage.p set value 25
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
