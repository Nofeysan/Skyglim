#> stage:teleport/importants/4/summon_item
# 
# 
# 
# 

# loot
loot spawn ~ ~3 ~ loot stage:importants/4/eye
execute positioned ~ ~3 ~ run data modify entity @n[type=minecraft:item] PickupDelay set value 40
execute positioned ~ ~3 ~ run data modify entity @n[type=minecraft:item] Glowing set value true
execute positioned ~ ~3 ~ run data modify entity @n[type=minecraft:item] NoGravity set value true
execute positioned ~ ~3 ~ run data modify entity @n[type=minecraft:item] Motion set value [0.0d, 0.0d, 0.0d]

execute positioned ~ ~3 ~ run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.03 30
execute positioned ~ ~3 ~ run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 0.4 0.8
