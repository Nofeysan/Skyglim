#> story:avelian/1/1
# 
# ここから 会話文スタート
# 
# 

# tellraw
execute store result score _ _ if entity @a

execute if score _ _ matches 1 run tellraw @a [{translate: "story.???"}, {translate: "story.avelian.1-1.1"}]
execute if score _ _ matches 2.. run tellraw @a [{translate: "story.???"}, {translate: "story.avelian.1-1.2"}]

# 自動進行
schedule function story:avelian/1/2 80t

# playsound
execute at @n[type=minecraft:villager, predicate=story:is_avelian] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5

# scorereset
scoreboard players set _ CanTalkWithMe 0
