#> stage:player/sp5/root
# 
# 
# 
# 

# kill
    execute at @s run kill @e[type=minecraft:item, distance=..4, predicate=stage:is_torch]


# score: i++ & torch count
    scoreboard players add @s ex5.froze.timer 1
    execute store result score @s ex5.froze.count run data get entity @s equipment.offhand{components:{"minecraft:repair_cost": 310501}}.count
    execute store result score @s ex5.froze.count.all run clear @s *[minecraft:repair_cost=310501] 0

# heal
    execute at @s if entity @e[type=minecraft:armor_stand, tag=ex5.campfire, distance=..3] run function stage:player/sp5/heal

# has torch -> -1/50tick
    execute if score @s ex5.froze.count matches 1.. if score @s ex5.froze.timer matches 50.. run function stage:player/sp5/remove

# no torch
    execute unless score @s ex5.froze.count matches 1.. if score @s ex5.froze.timer matches 20.. at @s run function stage:player/sp5/freeze

#! debug
    #title @s times 0 20 10
    #title @s title ''
    #title @s subtitle [{text: "count: "}, {score: {name: "@s", objective: "ex5.froze.count"}},{text: "("}, {score: {name: "@s", objective: "ex5.froze.count.all"}}, {text: ") | timer: "}, {score: {name: "@s", objective: "ex5.froze.timer"}}, {text: " | campfire: "}, {score: {name: "@s", objective: "ex5.campfire"}}]
