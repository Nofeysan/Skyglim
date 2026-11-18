#> stage:teleport/importants/16/act/1
# 
# 
# 
# 

# item
loot spawn 9978 85 -267 loot stage:importants/12/key
execute positioned 9978 85 -267 run data modify entity @n[type=minecraft:item] PickupDelay set value 4000
execute positioned 9978 85 -267 run data modify entity @n[type=minecraft:item] Glowing set value true
execute positioned 9978 85 -267 run data modify entity @n[type=minecraft:item] NoGravity set value true
execute positioned 9978 85 -267 run data modify entity @n[type=minecraft:item] Motion set value [0.0d, 0.0d, 0.0d]
execute positioned 9978 85 -267 run tag @n[type=minecraft:item] add s16.gate.open

execute positioned 9978 85 -267 run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.3 40
execute positioned 9978 85 -267 run playsound minecraft:entity.experience_orb.pickup voice @a ~ ~ ~ 0.4 1.2

# next
schedule function stage:teleport/importants/16/act/2 20t
