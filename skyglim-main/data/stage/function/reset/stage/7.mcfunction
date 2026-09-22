#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# forceload add
forceload add 9746 -532 9979 -275

# スポナーの破壊
execute positioned 9746 -5 -532 run kill @e[dx=233, dy=52, dz=257, type=minecraft:spawner_minecart]

# foeceload remove
forceload remove 9746 -532 9979 -275

# スコアのリセット
scoreboard players set _ stage.7 -1

# boss 用
bossbar remove minecraft:stage7.boss

#! debug
tellraw @a {text: '[!] Stage 7 がリセットされた。', color: "gray"}
