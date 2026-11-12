#> entity:aec_manager/perform/
# 
# 通常ダメージの場合は normal の二つのコメントアウトを解除
# 割合ダメージの場合は percent の三つのコメントアウトを解除し、割合を指定する (p)
# 

# effect
    particle minecraft:lava ~ ~1 ~ 1.5 1 1.5 0.03 20
    particle minecraft:dust{color: [0.745098039215686, 0.129411764705882, 0.32156862745098], scale: 1.0} ~ ~1 ~ 2 2 2 0.03 200
    playsound minecraft:item.firecharge.use voice @a ~ ~ ~ 0.3 1
    playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 0.2 1
    effect give @a[distance=..3.5] minecraft:slowness 1 4

# damage
    # normal
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        #data modify storage enemy: aec.damage.p set value 
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
