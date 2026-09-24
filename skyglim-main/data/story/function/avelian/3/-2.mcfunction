#> story:avelian/3/-1
# 
# tp 解放後
# 
# 

# tellraw
tellraw @a [{translate: "story.avelian.has.conv", color: "#92f3a4"}]

# sound
execute as @a at @s run playsound minecraft:block.amethyst_block.step voice @s ~ ~ ~ 2 1

# 自動進行
schedule function story:avelian/3/-1 40t
