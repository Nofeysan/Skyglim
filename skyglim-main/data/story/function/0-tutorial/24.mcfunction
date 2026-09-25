#> story:0-tutorial/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.24"}]

# 自動進行
schedule function story:0-tutorial/25 80t

# playsound
execute at @n[tag=aj.skyglim.kalmia.root] run playsound minecraft:entity.allay.item_given voice @a ~ ~ ~ 0.7 1.5
