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

# kalmia
execute as @n[tag=aj.skyglim.kalmia.root] run tp @s 76 99 -246 -168 25

# playsound
execute at @n[tag=aj.skyglim.kalmia.root] run playsound minecraft:entity.allay.item_given voice @a ~ ~ ~ 0.7 1.5
