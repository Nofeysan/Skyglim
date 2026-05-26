#> story:1-guard/1
# 
# ここから 会話文スタート
# 
# 

# tellraw
execute store result score _ _ if entity @a

execute if score _ _ matches 1 run tellraw @a [{translate: "story.guard"}, {translate: "story.guard.2.1"}]
execute if score _ _ matches 2.. run tellraw @a [{translate: "story.guard"}, {translate: "story.guard.2.2"}]

# 自動進行
schedule function story:1-guard/2.2 40t

# playsound
execute at @n[type=minecraft:villager, nbt={data: {role: "guard"}}] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5
