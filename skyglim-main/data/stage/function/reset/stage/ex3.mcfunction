#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# forceload add
forceload add 9991 -520 9922 -580

# スポナーの破壊
execute positioned 9922 98 -530 run kill @e[dx=69, dy=48, dz=60, type=minecraft:spawner_minecart]

# foeceload remove
forceload remove 9991 -520 9922 -580

# スコアのリセット
scoreboard players set _ stage.ex.3 -1

# boss 用
bossbar remove minecraft:stageex3.boss

#! debug
tellraw @a {text: '[!] Special III がリセットされた。', color: "gray"}
