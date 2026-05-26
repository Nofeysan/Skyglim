#> story:1-guard/1
# 
# ここから 会話文スタート
# 
# 

# 自動進行
schedule function story:1-guard/6.3 20t

# playsound
particle minecraft:cloud 89 60 151 3 -7 0 0.1 200
execute positioned 90 51 151 run playsound minecraft:block.barrel.open voice @a ~ ~ ~ 1.2 1

# 門開ける
clone 81 35 182 76 44 183 87 51 151
