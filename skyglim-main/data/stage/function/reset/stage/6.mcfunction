#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# forceload add
forceload add 9958 -233 10075 -144

# スポナーの破壊
execute positioned 9853 -28 -152 run kill @e[dx=117, dy=85, dz=89, type=minecraft:spawner_minecart]

# foeceload remove
forceload remove 9958 -233 10075 -144

# スコアのリセット
scoreboard players set _ stage.6 -1

# boss 用
bossbar remove minecraft:stage6.boss

#! debug
tellraw @a {text: '[!] Stage 6 がリセットされた。', color: "gray"}
