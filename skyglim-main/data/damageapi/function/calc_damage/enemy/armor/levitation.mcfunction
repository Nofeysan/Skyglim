#> damageapi:calc_damage/enemy/armor/levitation
# 
# 
# 
# 

# どーん
effect give @e[tag=damage_taken,predicate=entity:entity_enemy, tag=!levitated] minecraft:levitation 2 0
tag @e[tag=damage_taken,predicate=entity:entity_enemy, tag=!levitated] add levitated
