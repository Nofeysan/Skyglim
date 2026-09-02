#> damageapi:status/player/search/armor/id/1113005
# 
# 
# 
# 

# 他部位
    execute store result score $armor_id_chest _ run data get storage damageapi: armor.chest.components."minecraft:repair_cost"
    execute store result score $armor_id_legs _ run data get storage damageapi: armor.legs.components."minecraft:repair_cost"
    execute store result score $armor_id_feet _ run data get storage damageapi: armor.feet.components."minecraft:repair_cost"

# check
    execute if score $armor_id_chest _ matches 1203206 if score $armor_id_legs _ matches 1203207 if score $armor_id_feet _ matches 1203208 unless score @s occupation matches 5 run data modify storage status: book.ccp set value '§b(+5%)'

    execute if score $armor_id_chest _ matches 1203206 if score $armor_id_legs _ matches 1203207 if score $armor_id_feet _ matches 1203208 if score @s occupation matches 5 run data modify storage status: book.ccp set value '§b(+10%)'

    execute if score $armor_id_chest _ matches 1203206 if score $armor_id_legs _ matches 1203207 if score $armor_id_feet _ matches 1203208 run \
        data modify storage status: book.cdp set value '§b(+30%)'
