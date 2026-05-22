#> story:0-tutorial/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.46"}]

# 通貨
execute as @a at @s run function item:currency/summon {pos: "~ ~ ~", l: 12, lb: 0, el: 0, elb: 0}

# 自動進行
schedule function story:0-tutorial/47 60t
