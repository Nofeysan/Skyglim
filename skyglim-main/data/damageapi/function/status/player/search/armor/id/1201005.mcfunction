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
    execute if score $armor_id_chest _ matches 1201006 if score $armor_id_legs _ matches 1201007 if score $armor_id_feet _ matches 1201008 run \
        scoreboard players add magic Temp 20

    execute if score $armor_id_chest _ matches 1201006 if score $armor_id_legs _ matches 1201007 if score $armor_id_feet _ matches 1201008 run \
        data modify storage status: book.mpp set value '§b(+5%)'
