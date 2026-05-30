#> stage:reset/stage/1
# 
# ステージのリセット
# 
# 

# forceload add
forceload add 9868 -152 9896 -124

# スポナーの破壊
setblock 9882 72 -149 minecraft:air
setblock 9893 72 -138 minecraft:air
setblock 9882 72 -127 minecraft:air
setblock 9893 60 -138 minecraft:air
setblock 9874 48 -131 minecraft:air
setblock 9874 42 -131 minecraft:air
setblock 9874 36 -130 minecraft:air
setblock 9871 36 -138 minecraft:air
setblock 9890 48 -131 minecraft:air
setblock 9890 48 -146 minecraft:air
setblock 9890 42 -146 minecraft:air
setblock 9889 36 -146 minecraft:air
setblock 9890 30 -145 minecraft:air
setblock 9875 30 -146 minecraft:air
setblock 9875 24 -147 minecraft:air
setblock 9874 18 -145 minecraft:air
setblock 9890 18 -145 minecraft:air
setblock 9889 12 -146 minecraft:air
setblock 9889 12 -130 minecraft:air
setblock 9890 0 -130 minecraft:air
setblock 9874 0 -130 minecraft:air
setblock 9874 0 -145 minecraft:air

# foeceload remove
forceload remove 9868 -152 9896 -124

# スコアのリセット
scoreboard players set _ stage.4 -1

# boss 用
bossbar remove minecraft:stage4.boss

#! debug
#tellraw @a {text: '[!] プレイヤーがいないため、「Stage 3」をリセットしました。', color: "gray"}
