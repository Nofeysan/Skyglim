#> story:0-tutorial/2
# 
# 
# 
# 

# tellraw
tellraw @a [{translate: "story.kalmia"}, {translate: "story.tutorial.29"}]

# 武器をあげる
loot give @a loot shop:.give/weapon/tier1/sword

# sonud
execute as @a at @s run playsound minecraft:entity.item.pickup voice @s ~ ~ ~ 0.5 1

# 自動進行
schedule function story:0-tutorial/30 60t
