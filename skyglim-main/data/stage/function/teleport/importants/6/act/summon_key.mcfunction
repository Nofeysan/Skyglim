#> stage:teleport/importants/4/summon_item
# 
# 
# 
# 

# loot
loot spawn 9991 129 -267 loot stage:importants/5-6/key
execute positioned 9991 129 -267 run data modify entity @n[type=minecraft:item] PickupDelay set value 40
execute positioned 9991 129 -267 run data modify entity @n[type=minecraft:item] Glowing set value true
execute positioned 9991 129 -267 run data modify entity @n[type=minecraft:item] NoGravity set value true
execute positioned 9991 129 -267 run data modify entity @n[type=minecraft:item] Motion set value [0.0d, 0.0d, 0.0d]
execute positioned 9991 129 -267 run tag @n[type=minecraft:item] add s6.gate.key

execute positioned 9991 129 -267 run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.03 30
execute positioned 9991 129 -267 run playsound minecraft:entity.experience_orb.pickup voice @a ~ ~ ~ 0.4 0.8
