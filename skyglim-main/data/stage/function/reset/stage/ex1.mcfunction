#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# forceload add
forceload add 9824 158 9915 313

# スポナーの破壊
execute positioned 9824 67 158 run kill @e[dx=91, dy=44, dz=158, type=minecraft:spawner_minecart]

# foeceload remove
forceload remove 9824 158 9915 313

# スコアのリセット
scoreboard players set _ stage.ex.1 -1

# boss 用
#bossbar remove minecraft:stage10.boss

#! debug
tellraw @a {text: '[!] Special I がリセットされた。', color: "gray"}
