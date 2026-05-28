#> story:0-tutorial/2
# 
# 既プレイ向けの短縮要素
# 
# 

# tellraw
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.6-2.3"}]

# 自動進行
schedule function story:0-tutorial/21 80t

# playsound
execute at @n[type=minecraft:allay, tag=kalmia] run playsound minecraft:entity.allay.item_given voice @a ~ ~ ~ 0.7 1.5
