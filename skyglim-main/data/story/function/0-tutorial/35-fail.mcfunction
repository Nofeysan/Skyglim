#> story:0-tutorial/2
# 
# 
# 
# 

# はずれ
tp @s 100 61 -272 0 0

# tell
tellraw @s [{translate: "story.kalmia"}, {translate: "story.tutorial.35.no"}]

# sound
execute at @s run playsound minecraft:entity.villager.no voice @s ~ ~ ~ 0.3 2
