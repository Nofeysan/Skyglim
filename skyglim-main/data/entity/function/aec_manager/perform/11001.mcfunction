#> entity:aec_manager/perform/
# 
# 通常ダメージの場合は normal の二つのコメントアウトを解除
# 割合ダメージの場合は percent の三つのコメントアウトを解除し、割合を指定する (p)
# 

# effect
    particle minecraft:block{block_state: {Name: "minecraft:slime_block"}} ~ ~ ~ 2 0.3 2 0.1 200
    particle minecraft:block{block_state: {Name: "minecraft:magma_block"}} ~ ~ ~ 2 0.3 2 0.1 200
    playsound minecraft:entity.slime.squish voice @a ~ ~ ~ 0.8 1
    effect give @a[distance=..4.5] minecraft:slowness 7 1

# damage
    # normal
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        #data modify storage enemy: aec.damage.p set value 
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
