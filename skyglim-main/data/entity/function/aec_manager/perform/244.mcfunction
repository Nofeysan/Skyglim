#> entity:aec_manager/perform/
# 
# 通常ダメージの場合は normal の二つのコメントアウトを解除
# 割合ダメージの場合は percent の三つのコメントアウトを解除し、割合を指定する (p)
# 

# effect
    particle minecraft:witch ~ ~1 ~ 2.5 2 2.5 0.1 480
    particle minecraft:dust{color: [0.772549019607843, 0.929411764705882, 1], scale: 2.0} ~ ~1 ~ 3 2 3 0.1 320
    playsound minecraft:entity.wolf.death voice @a ~ ~ ~ 0.2 0.5
    playsound minecraft:item.totem.use voice @a ~ ~ ~ 0.2 2

# damage    
    # normal
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        data modify storage enemy: aec.damage.p set value 60
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
