#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# forceload add
forceload add 11027 -148 11199 -33

# スポナーの破壊
execute positioned 11027 233 -148 run kill @e[dx=172, dy=32, dz=108, type=minecraft:spawner_minecart]

# foeceload remove
forceload remove 11027 -148 11199 -33

# スコアのリセット
scoreboard players set _ stage.12 -1

# boss 用
bossbar remove minecraft:stage12.boss

#! debug
tellraw @a {text: '[!] Stage 12 がリセットされた。', color: "gray"}
