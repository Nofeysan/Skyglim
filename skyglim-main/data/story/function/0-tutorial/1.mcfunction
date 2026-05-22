#> story:0-tutorial/1
# 
# ここから 会話文スタート
# 
# 

# tellraw
tellraw @a [{translate: "story.???"}, {translate: "story.tutorial.1"}]

# 自動進行
schedule function story:0-tutorial/2 60t
