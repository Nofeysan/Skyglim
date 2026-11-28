#> story:villager/talk/knight/1/1
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "villager.name.knight"}, {translate: "story.cloud.village.1-1"}]

# 自動進行
schedule function story:villager/talk/knight/1/2 80t

# playsound
execute at @n[type=minecraft:villager, tag=knight_leader] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5

# score
scoreboard players set $has_talks_knight CanTalkWithMe 99
scoreboard players set $cant_use_pearl _ 1
