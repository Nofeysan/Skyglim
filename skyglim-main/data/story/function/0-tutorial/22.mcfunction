#> story:0-tutorial/2
# 
# 
# 
# 

# tellraw
tellraw @a ""
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.22"}]

# 自動進行
schedule function story:0-tutorial/23 80t

# allay
tp @n[type=minecraft:allay, tag=kalmia] 97 63.5 -290

# playsound
execute at @n[type=minecraft:allay, tag=kalmia] run playsound minecraft:entity.allay.item_given voice @a ~ ~ ~ 0.7 1.5
