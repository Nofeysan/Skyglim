#* as (on attacker)
execute at @n[tag=damage_taken] as @e[predicate=entity:entity_enemy, distance=..2] run damage @s 10 minecraft:player_attack by @p[tag=damage_dealt]
execute at @n[tag=damage_taken] as @e[predicate=entity:entity_enemy, distance=..2] if score chargerate Temp matches ..89 run tag @s add additional_low
execute at @n[tag=damage_taken] as @e[predicate=entity:entity_enemy, distance=..2] if score chargerate Temp matches 90.. run tag @s add additional_normal
scoreboard players set additional_done Temp 2

execute at @n[tag=damage_taken] run playsound minecraft:item.trident.throw voice @a ~ ~ ~ 1 2
execute at @n[tag=damage_taken] run particle minecraft:sweep_attack ~ ~ ~ 1.5 1 1.5 0 120

#! debug
#tellraw @s [{"text": "\ue010 追撃発生！","color": "#aaaaaa"}]
