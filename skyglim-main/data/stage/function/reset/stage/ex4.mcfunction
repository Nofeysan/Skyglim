#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# forceload add
forceload add 10064 -463 10222 -354

# スポナーの破壊
execute positioned 10064 9 -463 run kill @e[dx=158, dy=72, dz=109, type=minecraft:spawner_minecart]

# foeceload remove
forceload remove 10064 -463 10222 -354

# スコアのリセット
scoreboard players set _ stage.ex.4 -1

# boss 用
#bossbar remove minecraft:stage10.boss

#! debug
tellraw @a {text: '[!] Special IV がリセットされた。', color: "gray"}
