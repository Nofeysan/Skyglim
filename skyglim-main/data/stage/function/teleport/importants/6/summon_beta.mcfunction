#> stage:teleport/importants/6/summon_beta
# 
# 
# 
# 

# loot
loot spawn ~1 ~3 ~ loot stage:importants/5-6/book
execute positioned ~1 ~3 ~ run data modify entity @n[type=minecraft:item] PickupDelay set value 40
execute positioned ~1 ~3 ~ run data modify entity @n[type=minecraft:item] Glowing set value true
execute positioned ~1 ~3 ~ run data modify entity @n[type=minecraft:item] NoGravity set value true
execute positioned ~1 ~3 ~ run data modify entity @n[type=minecraft:item] Motion set value [0.0d, 0.0d, 0.0d]

execute positioned ~1 ~3 ~ run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.03 30
execute positioned ~1 ~3 ~ run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 0.4 0.8

loot spawn ~-1 ~3 ~ loot stage:importants/5-6/key-beta
execute positioned ~-1 ~3 ~ run data modify entity @n[type=minecraft:item] PickupDelay set value 40
execute positioned ~-1 ~3 ~ run data modify entity @n[type=minecraft:item] Glowing set value true
execute positioned ~-1 ~3 ~ run data modify entity @n[type=minecraft:item] NoGravity set value true
execute positioned ~-1 ~3 ~ run data modify entity @n[type=minecraft:item] Motion set value [0.0d, 0.0d, 0.0d]

execute positioned ~-1 ~3 ~ run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.03 30
execute positioned ~-1 ~3 ~ run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 0.4 0.8
