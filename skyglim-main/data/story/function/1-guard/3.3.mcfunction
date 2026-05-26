#> story:1-guard/1
# 
# ここから 会話文スタート
# 
# 

# tellraw
tellraw @a [{translate: "story.guard"}, {translate: "story.guard.3.3"}]

# 自動進行
schedule function story:1-guard/4 60t

# playsound
execute at @n[type=minecraft:villager, nbt={data: {role: "guard"}}] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5
