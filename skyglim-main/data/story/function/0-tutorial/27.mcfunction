#> story:0-tutorial/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.27"}]

# ここで確認ターン
# 道を開ける
fill 80 99 -242 76 96 -241 minecraft:air destroy

# 次はコマブロから実行

# playsound
execute at @n[tag=aj.skyglim.kalmia.root] run playsound minecraft:entity.allay.item_given voice @a ~ ~ ~ 0.7 1.5
