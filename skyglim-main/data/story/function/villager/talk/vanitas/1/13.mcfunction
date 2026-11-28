#> story:villager/talk/knight/1/1
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.vanitas"}, {translate: "story.vanitas.1-13"}]

# 自動進行
schedule function story:villager/talk/vanitas/1/14 100t

# playsound
execute at @n[type=minecraft:villager, tag=vanitas] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5

# item
loot spawn 10014 14.5 -388 loot stage:importants/9/fire_stick
execute positioned 10014 14.5 -388 run data modify entity @n[type=minecraft:item] PickupDelay set value 60
execute positioned 10014 14.5 -388 run data modify entity @n[type=minecraft:item] Glowing set value true
execute positioned 10014 14.5 -388 run data modify entity @n[type=minecraft:item] NoGravity set value true
execute positioned 10014 14.5 -388 run data modify entity @n[type=minecraft:item] Motion set value [0.0d, 0.0d, 0.0d]

execute positioned 10014 14.5 -388 run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.3 40
execute positioned 10014 14.5 -388 run playsound minecraft:entity.experience_orb.pickup voice @a ~ ~ ~ 0.4 1.2
