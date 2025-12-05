# 鈍足に
execute at @n[tag=damage_taken] run effect give @e[distance=..2.5, predicate=entity:entity_enemy] minecraft:slowness 2 1

# いろいろ
execute at @n[tag=damage_taken] run particle minecraft:wax_off ~ ~ ~ 1.5 1 1.5 0.3 240
execute at @n[tag=damage_taken] run playsound minecraft:item.trident.thunder voice @a ~ ~ ~ 1 2
