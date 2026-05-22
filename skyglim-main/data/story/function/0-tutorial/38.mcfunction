#> story:0-tutorial/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.38"}]

# player に選ばせる時間
# player 全数を取得
execute store result score $all story.check if entity @a[gamemode=adventure]
scoreboard players set $progress story.progress 0

# 自動進行
#schedule function story:0-tutorial/2 60t
