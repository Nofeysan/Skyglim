#> stage:teleport/importants/9/act/1
# 
# アイテム召喚
# 
# 

# loot
loot spawn 9866 108.5 -143 loot stage:importants/4/eye
execute positioned 9866 108.5 -143 run data modify entity @n[type=minecraft:item] PickupDelay set value 4000
execute positioned 9866 108.5 -143 run data modify entity @n[type=minecraft:item] Glowing set value true
execute positioned 9866 108.5 -143 run data modify entity @n[type=minecraft:item] NoGravity set value true
execute positioned 9866 108.5 -143 run data modify entity @n[type=minecraft:item] Motion set value [0.0d, 0.0d, 0.0d]
execute positioned 9866 108.5 -143 run tag @n[type=minecraft:item] add s4.gate.open

execute positioned 9866 108.5 -143 run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.03 30
execute positioned 9866 108.5 -143 run playsound minecraft:entity.experience_orb.pickup voice @a ~ ~ ~ 0.4 1.2

# next
schedule function stage:teleport/importants/4/act/2 40t
