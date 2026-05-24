#> story:0-tutorial/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.28"}]

# 自動進行
schedule function story:0-tutorial/29 60t

# allay
tp @n[type=minecraft:allay, tag=kalmia] 97 63.5 -267
