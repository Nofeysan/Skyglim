#> magic:act/tick/300005/trigger
# 
# 周囲の敵にダメージを与える
# 
# 

# tag
tag @s add 300005

# armor_stand でダメージ
    # data
    data modify storage damageapi: magic_damage.id set value 300005
    data modify storage damageapi: magic_damage.dmg set from entity @s data.status.dmg

    # summon
    function magic:macro/summon_armorstand with storage damageapi: magic_damage

    # damage
    execute as @e[distance=..2.5, predicate=entity:entity_enemy] at @s run damage @s 100 minecraft:magic by @n[type=minecraft:armor_stand, tag=300005]

# particle
particle minecraft:lava ~ ~ ~ 1.5 2 1.5 0.1 80
particle minecraft:explosion ~ ~ ~ 0.1 0.2 0.1 0.1 10

playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 0.5 1
playsound minecraft:entity.ender_dragon.hurt voice @a ~ ~ ~ 0.5 1

# kill
kill @s
