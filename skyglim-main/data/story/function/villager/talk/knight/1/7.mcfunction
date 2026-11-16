#> story:avelian/1/1
# 
# ここから 会話文スタート
# 
# 

# tellraw
tellraw @a [{translate: "villager.name.knight"}, {translate: "story.cloud.village.1-7"}]

# 自動進行
schedule function story:villager/talk/knight/1/8 100t

# playsound
execute at @n[type=minecraft:villager, tag=knight_leader] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5
