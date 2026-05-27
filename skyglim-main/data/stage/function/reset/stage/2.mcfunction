#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# forceload add
forceload add 9862 -100 9894 -68

# スポナーの破壊
setblock 9867 -49 -80 minecraft:air
setblock 9878 -49 -72 minecraft:air
setblock 9890 -46 -89 minecraft:air
setblock 9877 -46 -97 minecraft:air
setblock 9869 -36 -92 minecraft:air
setblock 9877 -28 -96 minecraft:air
setblock 9886 -35 -86 minecraft:air
setblock 9886 -36 -77 minecraft:air
setblock 9872 -36 -77 minecraft:air
setblock 9881 -20 -75 minecraft:air
setblock 9881 -20 -85 minecraft:air
setblock 9889 -19 -79 minecraft:air
setblock 9874 0 -82 minecraft:air

# foeceload remove
forceload remove 9862 -100 9894 -68

# スコアのリセット
scoreboard players set _ stage.2 -1

# boss 用
bossbar remove minecraft:stage2.boss

#! debug
#tellraw @a {text: '[!] プレイヤーがいないため、「Stage 2」をリセットしました。', color: "gray"}
