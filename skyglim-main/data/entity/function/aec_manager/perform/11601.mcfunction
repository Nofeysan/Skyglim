#> entity:aec_manager/perform/11601
# 
# 通常ダメージの場合は normal の二つのコメントアウトを解除
# 割合ダメージの場合は percent の三つのコメントアウトを解除し、割合を指定する (p)
# 

# effect
    particle minecraft:wax_off ~ ~1 ~ 0.3 7 0.3 0.1 200
    particle minecraft:dust{color: 9630628, scale: 1.0} ~ ~1 ~ 1.5 1.5 1.5 0.03 200
    particle minecraft:dust{color: 8378082, scale: 1.0} ~ ~1 ~ 1.5 1.5 1.5 0.03 200
    playsound minecraft:entity.firework_rocket.blast voice @a ~ ~ ~ 0.4 1
    playsound minecraft:entity.splash_potion.break voice @a ~ ~ ~ 0.3 1
    effect give @a[distance=..3.5] minecraft:slowness 4 3
    effect give @a[distance=..3.5] minecraft:blindness 1 1
    effect give @a[distance=..3.5] minecraft:wither 3 0

# damage
    # normal
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        #data modify storage enemy: aec.damage.p set value 10
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
