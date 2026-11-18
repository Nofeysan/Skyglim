#> story:avelian/1/1
# 
# ここから 会話文スタート
# 
# 

# tellraw
tellraw @a [{translate: "story.avelian"}, {translate: "story.avelian.12-7"}]

# 自動進行
schedule function story:avelian/12/8 60t

# playsound
execute at @n[tag=aj.skyglim.avelian.root] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5

#! アイテム召喚
loot spawn 90.0 55 242 loot stage:importants/16/key
execute positioned 90.0 55 242 run data modify entity @n[type=minecraft:item] PickupDelay set value 220
execute positioned 90.0 55 242 run data modify entity @n[type=minecraft:item] Glowing set value true
execute positioned 90.0 55 242 run data modify entity @n[type=minecraft:item] NoGravity set value true
execute positioned 90.0 55 242 run data modify entity @n[type=minecraft:item] Motion set value [0.0d, 0.0d, 0.0d]
execute positioned 90.0 55 242 run tag @n[type=minecraft:item] add s12.gate.open

execute positioned 90.0 55 242 run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.3 40
execute positioned 90.0 55 242 run playsound minecraft:entity.experience_orb.pickup voice @a ~ ~ ~ 0.4 1.2

loot spawn 91.0 55 242 loot stage:importants/16/book
execute positioned 91.0 55 242 run data modify entity @n[type=minecraft:item] PickupDelay set value 220
execute positioned 91.0 55 242 run data modify entity @n[type=minecraft:item] Glowing set value true
execute positioned 91.0 55 242 run data modify entity @n[type=minecraft:item] NoGravity set value true
execute positioned 91.0 55 242 run data modify entity @n[type=minecraft:item] Motion set value [0.0d, 0.0d, 0.0d]
execute positioned 91.0 55 242 run tag @n[type=minecraft:item] add s12.gate.open

execute positioned 91.0 55 242 run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.3 40
execute positioned 91.0 55 242 run playsound minecraft:entity.experience_orb.pickup voice @a ~ ~ ~ 0.4 1.2
