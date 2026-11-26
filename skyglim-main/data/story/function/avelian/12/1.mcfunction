#> story:avelian/1/1
# 
# ここから 会話文スタート
# 
# 

# tellraw
tellraw @a [{translate: "story.avelian"}, {translate: "story.avelian.12-1"}]

# 自動進行
schedule function story:avelian/12/2 100t

# playsound
execute at @n[tag=aj.skyglim.avelian.root] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5

# score
scoreboard players set _ CanTalkWithMe 0
scoreboard players set $avelian_talks story.progress 99
