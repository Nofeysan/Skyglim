#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# forceload add
#forceload add 9550 -468 9478 -540

# スポナーの破壊
#execute positioned 10098 2 -359 run kill @e[dx=73, dy=27, dz=217, type=minecraft:spawner_minecart]

# foeceload remove
#forceload remove 9550 -468 9478 -540

# スコアのリセット
scoreboard players set _ stage.16 -1

# boss 用
bossbar remove minecraft:stage16.boss

#! debug
tellraw @a {text: '[!] Stage 16 がリセットされた。', color: "gray"}
