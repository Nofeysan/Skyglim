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

#! portal 設置
#clone 
