#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# forceload add
forceload add 10936 273 11108 414

# スポナーの破壊
execute positioned 10936 226 273 run kill @e[dx=172, dy=93, dz=141, type=minecraft:spawner_minecart]

# foeceload remove
forceload remove 10936 273 11108 414

# スコアのリセット
scoreboard players set _ stage.ex.6 -1

# boss 用
#bossbar remove minecraft:stage10.boss

#! debug
tellraw @a {text: '[!] Special VI がリセットされた。', color: "gray"}
