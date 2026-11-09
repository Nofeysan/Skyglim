#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# forceload add
forceload add 10098 -359 10171 -142

# スポナーの破壊
execute positioned 10098 2 -359 run kill @e[dx=73, dy=27, dz=217, type=minecraft:spawner_minecart]

# foeceload remove
forceload remove 10098 -359 10171 -142

# スコアのリセット
scoreboard players set _ stage.10 -1

# boss 用
bossbar remove minecraft:stage10.boss
clone 10136 -2 -351 10159 -2 -328 10136 5 -351

#! debug
tellraw @a {text: '[!] Stage 10 がリセットされた。', color: "gray"}
