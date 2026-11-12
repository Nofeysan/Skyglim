#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# forceload add
forceload add 6864 -144 6959 -81

# スポナーの破壊
execute positioned 6864 48 -144 run kill @e[dx=95, dy=44, dz=63, type=minecraft:spawner_minecart]

# foeceload remove
forceload remove 6864 -144 6959 -81

# スコアのリセット
scoreboard players set _ stage.ex.8 -1

# boss 用
#bossbar remove minecraft:stage10.boss

#! debug
tellraw @a {text: '[!] Special VIII がリセットされた。', color: "gray"}
