#> story:1-guard/1
# 
# ここから 会話文スタート
# 
# 

# tellraw
tellraw @a [{translate: "story.guard"}, {translate: "story.guard.6"}]

# 自動進行
schedule function story:1-guard/6.2 20t

# playsound
execute at @n[type=minecraft:villager, nbt={data: {role: "guard"}}] run playsound minecraft:entity.villager.ambient voice @a ~ ~ ~ 0.7 1.5

particle minecraft:cloud 89 60 151 3 -7 0 0.1 200
execute positioned 90 51 151 run playsound minecraft:block.barrel.open voice @a ~ ~ ~ 1.2 1

# 門開ける
clone 81 35 179 76 44 180 87 51 151
