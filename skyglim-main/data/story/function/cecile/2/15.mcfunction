#> story:avelian/1/1
# 
# ここから 会話文スタート
# 
# 

# tellraw
tellraw @a [{translate: "story.cecile"}, {translate: "story.cecile.ex1-15"}]

# 自動進行
schedule function story:cecile/2/16 120t

# playsound
execute at @n[tag=aj.skyglim.cecile.root] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5
