#> story:0-tutorial/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.29"}]

# 武器をあげる
loot give @a loot shop:.give/weapon/tier1/sword

# 自動進行
schedule function story:0-tutorial/30 60t
