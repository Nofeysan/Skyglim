#> entity:aec_manager/perform/
# 
# 通常ダメージの場合は normal の二つのコメントアウトを解除
# 割合ダメージの場合は percent の三つのコメントアウトを解除し、割合を指定する (p)
# 

# effect
    particle minecraft:block{block_state: {Name: "minecraft:slime_block"}} ~ ~ ~ 1.35 0.2 1.35 0.1 200
    particle minecraft:block{block_state: {Name: "minecraft:blackstone"}} ~ ~ ~ 1.35 0.2 1.35 0.1 200
    playsound minecraft:entity.slime.squish voice @a ~ ~ ~ 0.8 1
    playsound minecraft:block.chain.place voice @a ~ ~ ~ 0.8 0.8

# damage
    # normal
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        #data modify storage enemy: aec.damage.p set value 
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
