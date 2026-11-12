#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# forceload add
forceload add 10240 -288 10310 -54

# スポナーの破壊
execute positioned 10240 8 -288 run kill @e[dx=70, dy=48, dz=234, type=minecraft:spawner_minecart]

# foeceload remove
forceload remove 10240 -288 10310 -54

# スコアのリセット
scoreboard players set _ stage.ex.5 -1

# boss 用
bossbar remove minecraft:stageex5.boss

#! debug
tellraw @a {text: '[!] Special V がリセットされた。', color: "gray"}
