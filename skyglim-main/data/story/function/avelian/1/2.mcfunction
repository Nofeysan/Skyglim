#> story:avelian/1/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.???"}, {translate: "story.avelian.1-2"}]

# 自動進行
schedule function story:avelian/1/3 100t

# playsound
execute at @n[type=minecraft:villager, predicate=story:is_avelian] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5
