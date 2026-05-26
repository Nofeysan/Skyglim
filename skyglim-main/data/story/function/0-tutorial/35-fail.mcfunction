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

# playsound
execute at @n[type=minecraft:allay, tag=kalmia] run playsound minecraft:entity.allay.item_given voice @a ~ ~ ~ 0.7 1.5
