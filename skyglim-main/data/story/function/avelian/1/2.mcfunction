#> story:avelian/1/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.???"}, {translate: "story.avelian.1-2"}]

# 自動進行
schedule function story:avelian/1/3 80t

# playsound
execute at @n[tag=aj.skyglim.avelian.root] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5
