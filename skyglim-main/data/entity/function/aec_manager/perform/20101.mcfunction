#> entity:aec_manager/perform/
# 
# 通常ダメージの場合は normal の二つのコメントアウトを解除
# 割合ダメージの場合は percent の三つのコメントアウトを解除し、割合を指定する (p)
# 

# effect
    particle minecraft:witch ~ ~1 ~ 1.5 1 1.5 0.03 200
    particle minecraft:block{block_state: {Name: "minecraft:stone"}} ~ ~1 ~ 2 2 2 0.1 240
    playsound minecraft:entity.zombie.attack_wooden_door voice @a ~ ~ ~ 0.2 1
    playsound minecraft:item.trident.riptide_3 voice @a ~ ~ ~ 0.3 1
    effect give @a[distance=..4.5] minecraft:slowness 1 99

# damage
    # normal
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        #data modify storage enemy: aec.damage.p set value 10
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
