#> story:avelian/1/1
# 
# ここから 会話文スタート
# 
# 

# tellraw
tellraw @a [{translate: "story.cecile"}, {translate: "story.cecile.1-1"}]

# 自動進行
schedule function story:cecile/1/2 100t

# playsound
execute at @n[tag=aj.skyglim.cecile.root] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5
scoreboard players set $s16.boss.first _ 1
