#> story:0-tutorial/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.43"}]

# fill 
fill 116 100 -230 112 96 -229 minecraft:air destroy

# 自動進行
#schedule function story:0-tutorial/2 60t

# playsound
execute at @n[tag=aj.skyglim.kalmia.root] run playsound minecraft:entity.allay.item_given voice @a ~ ~ ~ 0.7 1.5
