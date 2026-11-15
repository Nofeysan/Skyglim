#> entity:aec_manager/perform/
# 
# 通常ダメージの場合は normal の二つのコメントアウトを解除
# 割合ダメージの場合は percent の三つのコメントアウトを解除し、割合を指定する (p)
# 

# effect
    particle minecraft:lava ~ ~ ~ 1.5 1 1.5 0.1 40
    particle minecraft:dust{color: 14238306, scale: 1.8} ~ ~ ~ 2 0.5 2 0.1 180
    particle minecraft:dust{color: 12460370, scale: 1.8} ~ ~ ~ 2 0.5 2 0.1 180
    execute as @a[distance=..80] at @s run playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 1 0.8
    execute as @a[distance=..80] at @s run playsound minecraft:block.anvil.place voice @a ~ ~ ~ 0.4 0.6

# damage
    # normal
        execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq with storage enemy: aec.damage
        execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci with storage enemy: aec.damage

    # percent
        #data modify storage enemy: aec.damage.p set value 20
        #execute if entity @s[tag=aec_sq] run function entity:aec_manager/damage/dealt_sq_percent with storage enemy: aec.damage
        #execute if entity @s[tag=aec_ci] run function entity:aec_manager/damage/dealt_ci_percent with storage enemy: aec.damage
