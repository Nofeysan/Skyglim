#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# forceload add
forceload add 8111 -129 8032 -224
forceload add 8032 -544 8239 -305

# スポナーの破壊
execute positioned 8032 66 -544 run kill @e[dx=207, dy=56, dz=431, type=minecraft:spawner_minecart]

# foeceload remove
forceload remove 8111 -129 8032 -224
forceload remove 8032 -544 8239 -305

# スコアのリセット
scoreboard players set _ stage.ex.7 -1

# boss 用
bossbar remove minecraft:stageex7.boss

#! debug
tellraw @a {text: '[!] Special VII がリセットされた。', color: "gray"}
