#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# forceload add
forceload add 7523 -14 7808 -113

# スポナーの破壊
execute positioned 7507 57 -132 run kill @e[dx=304, dy=57, dz=136, type=minecraft:spawner_minecart]

# foeceload remove
forceload remove 7523 -14 7808 -113

# スコアのリセット
scoreboard players set _ stage.14 -1

# boss 用
bossbar remove minecraft:stage14.boss

#! debug
tellraw @a {text: '[!] Stage 14 がリセットされた。', color: "gray"}
