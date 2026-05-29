#> story:avelian/1/1
# 
# ここから 会話文スタート
# 
# 

# tellraw
tellraw @a [{translate: "story.avelian"}, {translate: "story.avelian.4-2"}]

# 自動進行
schedule function story:avelian/4/3 80t

# playsound
execute at @n[type=minecraft:villager, predicate=story:is_avelian] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5
