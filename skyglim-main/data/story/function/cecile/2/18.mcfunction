#> story:avelian/1/1
# 
# ここから 会話文スタート
# 
# 

# tellraw
tellraw @a [{translate: "story.cecile"}, {translate: "story.cecile.ex1-18"}]
tellraw @a [{translate: "story.cecile.ex1-18-t", color: '#fab80d'}]

# playsound
execute at @n[tag=aj.skyglim.cecile.root] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5

# scorereset
scoreboard players set $has_talks_cecile CanTalkWithMe 0
scoreboard players set $chromalier_white _ 0
scoreboard players set $chromalier_yellow _ 0
scoreboard players set $chromalier_green _ 0
scoreboard players set $chromalier_light_blue _ 0
scoreboard players set $chromalier_cyan _ 0
scoreboard players set $chromalier_pink _ 0
scoreboard players set $chromalier_magenta _ 0
scoreboard players set $chromalier_black _ 0
scoreboard players set $chromalier_all _ 0

function stage:teleport/importants/sp-gate/init

scoreboard players set $has_talks_cecile CanTalkWithMe 0

# clone
clone 9259 97 -441 9331 116 -369 9259 141 -441

# perform
particle minecraft:end_rod 9295 147 -405 9 12 9 0.1 1200
particle minecraft:dust{color: 12378856, scale: 1.2} 9295 147 -405 9 12 9 0.1 1200
particle minecraft:dust{color: 16490559, scale: 1.2} 9295 147 -405 9 12 9 0.1 1200

summon minecraft:marker 9295 148 -405 {Tags: ['sp.monument.place']}

# item
loot spawn 9296 148 -400 loot stage:importants/sp-gate/auth-b
execute positioned 9296 148 -400 run data modify entity @n[type=minecraft:item] PickupDelay set value 220
execute positioned 9296 148 -400 run data modify entity @n[type=minecraft:item] Glowing set value true
execute positioned 9296 148 -400 run data modify entity @n[type=minecraft:item] NoGravity set value true
execute positioned 9296 148 -400 run data modify entity @n[type=minecraft:item] Motion set value [0.0d, 0.0d, 0.0d]

execute positioned 9296 148 -400 run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.3 40
execute positioned 9296 148 -400 run playsound minecraft:entity.experience_orb.pickup voice @a ~ ~ ~ 0.4 1.2

loot spawn 9294 148 -400 loot stage:importants/sp-gate/book
execute positioned 9294 148 -400 run data modify entity @n[type=minecraft:item] PickupDelay set value 220
execute positioned 9294 148 -400 run data modify entity @n[type=minecraft:item] Glowing set value true
execute positioned 9294 148 -400 run data modify entity @n[type=minecraft:item] NoGravity set value true
execute positioned 9294 148 -400 run data modify entity @n[type=minecraft:item] Motion set value [0.0d, 0.0d, 0.0d]

execute positioned 9294 148 -400 run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.3 40
execute positioned 9294 148 -400 run playsound minecraft:entity.experience_orb.pickup voice @a ~ ~ ~ 0.4 1.2

