#> story:1-guard/1
# 
# ここから 会話文スタート
# 
# 

# tellraw
tellraw @a [{translate: "story.guard"}, {translate: "story.guard.3.1"}]

# 自動進行
schedule function story:1-guard/4 60t

# playsound
execute at @n[type=minecraft:villager, nbt={data: {role: "guard"}}] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.3 2
