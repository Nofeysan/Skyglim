#> story:0-tutorial/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.33"}]

# 見通しの書
loot give @a loot damageapi:analyze

# 自動進行
schedule function story:0-tutorial/34 60t
