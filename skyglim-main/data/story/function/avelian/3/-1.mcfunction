#> story:avelian/3/-1
# 
# tp 解放後
# 
# 

# tellraw
tellraw @a [{translate: "story.avelian.has.conv", color: "#92f3a4"}]

# sound
effect give @a minecraft:blindness 4 0 true

# 自動進行
schedule function story:avelian/3/0 20t
