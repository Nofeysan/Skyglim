#> story:0-tutorial/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.33"}]

# 見通しの書
loot give @a loot damageapi:analyze

# sonud
execute as @a at @s run playsound minecraft:entity.item.pickup voice @s ~ ~ ~ 0.5 1

# 自動進行
schedule function story:0-tutorial/34 60t
