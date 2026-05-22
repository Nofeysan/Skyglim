#> story:0-tutorial/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.31"}]

# 敵召喚
execute positioned 0 -40 0 run function entity:summon/tutorial

# 自動進行
#schedule function story:0-tutorial/32 60t
