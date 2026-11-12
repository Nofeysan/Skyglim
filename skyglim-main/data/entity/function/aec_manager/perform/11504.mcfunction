#> entity:aec_manager/perform/
# 
# 通常ダメージの場合は normal の二つのコメントアウトを解除
# 割合ダメージの場合は percent の三つのコメントアウトを解除し、割合を指定する (p)
# 

# effect
    particle minecraft:wax_off ~ ~1 ~ 1.5 1 1.5 0.03 200
    particle minecraft:dust{color: [0.745098039215686, 0.129411764705882, 0.32156862745098], scale: 1.0} ~ ~1 ~ 2 2 2 0.03 200
    playsound minecraft:entity.firework_rocket.twinkle voice @a ~ ~ ~ 0.4 2
    playsound minecraft:entity.guardian.death voice @a ~ ~ ~ 0.3 2
    effect give @a[distance=..3.5] minecraft:slowness 4 3
    effect give @a[distance=..3.5] minecraft:blindness 1 1

# damage
    # normal
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        #data modify storage enemy: aec.damage.p set value 10
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
