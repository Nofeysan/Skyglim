#> story:avelian/1/1
# 
# ここから 会話文スタート
# 
# 

# tellraw
tellraw @a [{translate: "villager.name.knight"}, {translate: "story.cloud.village.1-1"}]

# playsound
execute at @n[type=minecraft:villager, tag=knight_leader] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5

# score
scoreboard players set $has_talks_knight CanTalkWithMe 0
