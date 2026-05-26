#> story:0-tutorial/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.27"}]

# ここで確認ターン
# 道を開ける
fill 101 64 -277 99 61 -277 minecraft:air destroy

# 次はコマブロから実行

# playsound
execute at @n[type=minecraft:allay, tag=kalmia] run playsound minecraft:entity.allay.item_given voice @a ~ ~ ~ 0.7 1.5
