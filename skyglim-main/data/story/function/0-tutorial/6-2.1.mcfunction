#> story:0-tutorial/2
# 
# 既プレイ向けの短縮要素
# 
# 

# schedule reset
schedule clear story:0-tutorial/7

# tellraw
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.6-2.1"}]

# 自動進行
schedule function story:0-tutorial/6-2.2 60t

# playsound
execute at @n[type=minecraft:allay, tag=kalmia] run playsound minecraft:entity.allay.item_given voice @a ~ ~ ~ 0.7 1.5
