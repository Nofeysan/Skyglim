#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# forceload add
forceload add 9732 -202 9454 -256

# スポナーの破壊
execute positioned 9454 20 -256 run kill @e[dx=278, dy=35, dz=54, type=minecraft:spawner_minecart]

# foeceload remove
forceload remove 9732 -202 9454 -256

# スコアのリセット
scoreboard players set _ stage.ex.2 -1

# boss 用
bossbar remove minecraft:stageex2.boss

#! debug
tellraw @a {text: '[!] Special II がリセットされた。', color: "gray"}
