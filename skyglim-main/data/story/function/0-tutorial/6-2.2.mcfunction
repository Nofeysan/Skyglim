#> story:0-tutorial/2
# 
# 既プレイ向けの短縮要素
# 
# 

# tellraw
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.6-2.2"}]

# 自動進行
schedule function story:0-tutorial/6-2.3 60t
