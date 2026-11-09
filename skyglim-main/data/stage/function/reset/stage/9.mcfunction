#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# forceload add
forceload add 10152 49 10327 330
forceload add 10386 290 10424 325

# スポナーの破壊
execute positioned 10152 -38 49 run kill @e[dx=284, dy=90, dz=284, type=minecraft:spawner_minecart]

# foeceload remove
forceload remove 10152 49 10327 330
forceload remove 10386 290 10424 325

# スコアのリセット
scoreboard players set _ stage.9 -1

# boss 用
bossbar remove minecraft:stage7.boss

#! debug
tellraw @a {text: '[!] Stage 9 がリセットされた。', color: "gray"}
