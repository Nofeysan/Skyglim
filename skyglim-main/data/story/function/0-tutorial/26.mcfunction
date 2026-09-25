#> story:0-tutorial/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.26"}]

# 看板出現
clone 58 54 -263 76 61 -245 69 94 -262

execute positioned 100 61 -288 run playsound minecraft:entity.experience_orb.pickup voice @a ~ ~ ~ 0.5 2
execute positioned 100 61 -288 run particle minecraft:happy_villager ~ ~ ~ 3 4 2 0.1 240


# 自動進行
schedule function story:0-tutorial/27 60t

# playsound
execute at @n[tag=aj.skyglim.kalmia.root] run playsound minecraft:entity.allay.item_given voice @a ~ ~ ~ 0.7 1.5
