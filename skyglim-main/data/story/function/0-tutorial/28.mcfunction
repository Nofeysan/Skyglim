#> story:0-tutorial/2
# 
# 
# 
# 

# tellraw
tellraw @a ""
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.28"}]

# 自動進行
schedule function story:0-tutorial/29 60t

# kalmia
execute as @n[tag=aj.skyglim.kalmia.root] run tp @s 72 98 -217 -135 16

# playsound
execute at @n[tag=aj.skyglim.kalmia.root] run playsound minecraft:entity.allay.item_given voice @a ~ ~ ~ 0.7 1.5
