#> story:avelian/1/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.avelian"}, {translate: "story.avelian.1-23"}]

# 自動進行
schedule function story:avelian/1/24 100t

# playsound
execute at @n[type=minecraft:villager, predicate=story:is_avelian] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5

# portal 設置
clone 102 47 243 104 48 245 102 54 243
particle minecraft:witch 103 54 244 0.5 1.5 0.5 0.1 480
execute at @n[type=minecraft:villager, predicate=story:is_avelian] run playsound minecraft:entity.wither.spawn voice @a ~ ~ ~ 0.7 1.5
