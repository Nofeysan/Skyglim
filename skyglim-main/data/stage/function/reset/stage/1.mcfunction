#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# forceload add
forceload add 9849 -8 9951 131

# スポナーの破壊
setblock 9879 13 27 minecraft:air
setblock 9889 12 14 minecraft:air
setblock 9903 15 23 minecraft:air
setblock 9905 16 36 minecraft:air
setblock 9922 17 28 minecraft:air
setblock 9926 17 33 minecraft:air

# foeceload remove
forceload remove 9849 -8 9951 131

# スコアのリセット
scoreboard players set _ stage.1 -1

# boss 用
bossbar remove minecraft:stage1.boss

#! debug
#tellraw @a {text: '[!] プレイヤーがいないため、「Stage 1」をリセットしました。', color: "gray"}
