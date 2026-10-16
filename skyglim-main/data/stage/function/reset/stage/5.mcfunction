#> stage:reset/stage/5
# 
# ステージのリセット
# 
# 

# forceload add
forceload add 9842 -276 9744 -467

# spawner remove
execute positioned 9744 63 -467 run kill @e[dx=98, dy=66, dz=191, type=minecraft:spawner_minecart]

# foeceload remove
forceload remove 9842 -276 9744 -467

# スコアのリセット
scoreboard players set _ stage.5 -1

# boss 用
#bossbar remove minecraft:stage4.boss

#! debug
tellraw @a {text: '[!] Stage 5 がリセットされた。', color: "gray"}
