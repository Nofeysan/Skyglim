#> story:0-tutorial/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.26"}]

# 看板出現
clone 104 56 -290 96 55 -282 96 61 -290

execute positioned 100 61 -288 run playsound minecraft:entity.experience_orb.pickup voice @a ~ ~ ~ 0.5 2
execute positioned 100 61 -288 run particle minecraft:happy_villager ~ ~ ~ 3 4 2 0.1 240


# 自動進行
schedule function story:0-tutorial/27 60t
