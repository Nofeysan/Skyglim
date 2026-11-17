#> story:avelian/1/1
# 
# ここから 会話文スタート
# 
# 

# tellraw
tellraw @a [{translate: "villager.name.knight"}, {translate: "story.cloud.village.1-12"}]
tellraw @a [{translate: "story.cloud.village.1-12-give"}]

# playsound
execute at @n[type=minecraft:villager, tag=knight_leader] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5

# score
scoreboard players set $has_talks_knight CanTalkWithMe 0

# loot give
execute at @n[type=minecraft:villager, tag=knight_leader] at @r[distance=..30] run loot spawn ~ ~1 ~ loot stage:importants/13/key

# avelian につなげる
schedule function story:avelian/9/-1 40t
