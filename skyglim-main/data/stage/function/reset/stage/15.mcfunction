#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# forceload add
forceload add 6923 23 6737 -37

# スポナーの破壊
execute positioned 10098 2 -359 run kill @e[dx=186, dy=42, dz=60, type=minecraft:spawner_minecart]

# foeceload remove
forceload remove 6923 23 6737 -37

# スコアのリセット
scoreboard players set _ stage.15 -1

# boss 用
bossbar remove minecraft:stage15.boss
fill 6784 83 9 6746 74 -29 minecraft:air

#! debug
tellraw @a {text: '[!] Stage 15 がリセットされた。', color: "gray"}
