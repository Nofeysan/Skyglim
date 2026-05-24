#> story:0-tutorial/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.44"}]

# 自動進行
schedule function story:0-tutorial/45 60t

# allay
tp @n[type=minecraft:allay, tag=kalmia] 100 63.5 -222
rotate @n[type=minecraft:allay, tag=kalmia] 180 25
