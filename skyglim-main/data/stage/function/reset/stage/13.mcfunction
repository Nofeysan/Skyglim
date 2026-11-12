#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# forceload add
forceload add 8992 -185 9087 28

# スポナーの破壊
execute positioned 8992 5 -185 run kill @e[dx=95, dy=30, dz=213, type=minecraft:spawner_minecart]

# foeceload remove
forceload remove 8992 -185 9087 28

# スコアのリセット
scoreboard players set _ stage.13 -1

# boss 用
bossbar remove minecraft:stage13.boss

#! debug
tellraw @a {text: '[!] Stage 13 がリセットされた。', color: "gray"}
