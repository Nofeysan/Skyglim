#> story:0-tutorial/2
# 
# 
# 
# 

# はずれ
tp @s 78 96 -227 0 0

# tell
tellraw @s [{translate: "story.kalmia"}, {translate: "story.tutorial.35.no"}]

# sound
execute at @s run playsound minecraft:entity.villager.no voice @s ~ ~ ~ 0.3 2

# playsound
execute at @n[tag=aj.skyglim.kalmia.root] run playsound minecraft:entity.allay.item_given voice @a ~ ~ ~ 0.7 1.5
