#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# forceload add
forceload add 10749 -323 10419 -444

# スポナーの破壊
execute positioned 10744 319 -295 run kill @e[dx=339, dy=75, dz=181, type=minecraft:spawner_minecart]

# foeceload remove
forceload remove 10749 -323 10419 -444

# スコアのリセット
scoreboard players set _ stage.11 -1

# boss 用
bossbar remove minecraft:stage11.boss

#! debug
tellraw @a {text: '[!] Stage 11 がリセットされた。', color: "gray"}
