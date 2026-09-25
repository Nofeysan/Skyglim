#> story:0-tutorial/1
# 
# ここから 会話文スタート
# 
# 

# tellraw
tellraw @a [{translate: "story.???"}, {translate: "story.tutorial.1"}]

# 自動進行
schedule function story:0-tutorial/2 60t

# summon
execute positioned 99 98 -271 rotated -167 25 run function aj:skyglim/kalmia/summon {args: {animation: 'hover', start_animation: true}}

# playsound
execute at @n[tag=aj.skyglim.kalmia.root] run playsound minecraft:entity.allay.item_given voice @a ~ ~ ~ 0.7 1.5
