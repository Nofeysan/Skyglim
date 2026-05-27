#> story:avelian/1/1
# 
# ここから 会話文スタート
# 
# 

# tellraw
tellraw @a [{translate: "story.avelian"}, {translate: "story.avelian.2-5"}]

# 自動進行
schedule function story:avelian/2/6 80t

# give
execute as @a at @s run function item:currency/summon {l: 0, lb: 1, el: 0, elb: 0, pos: "~ ~ ~"}

# playsound
execute at @n[type=minecraft:villager, predicate=story:is_avelian] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5
