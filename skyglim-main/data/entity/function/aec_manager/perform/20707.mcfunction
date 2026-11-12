#> entity:aec_manager/perform/
# 
# 通常ダメージの場合は normal の二つのコメントアウトを解除
# 割合ダメージの場合は percent の三つのコメントアウトを解除し、割合を指定する (p)
# 

# effect
    particle minecraft:block{block_state: {Name: "minecraft:honey_block"}} ~ ~2 ~ 2 2 2 0.1 400
    particle minecraft:dust{color: [0.984313725490196, 0.627450980392157, 0.247058823529412], scale: 1.6} ~ ~2 ~ 2 2 2 0.1 400
    playsound minecraft:block.brewing_stand.brew voice @a ~ ~ ~ 2 1
    playsound minecraft:entity.sheep.ambient voice @a ~ ~ ~ 1.6 2

# damage    
    # normal
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        #data modify storage enemy: aec.damage.p set value 
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
