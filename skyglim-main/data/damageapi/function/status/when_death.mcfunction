###* /kill された 1tick 後
# 盲目
effect give @s minecraft:blindness 4 0 true

# title?
title @s title ""
title @s subtitle {text: "死んでしまった！",color: "#d94262"}

# スコアリセット
scoreboard players reset @s DeathCount

# デスペナ
execute store result score _ _ run random value 2..8

# tell
tellraw @s [{translate: "death.penalty.1"}, {score: {name: "_", objective: "_"}}, {translate: "death.penalty.2"}]

# calc
scoreboard players set $death_penalty _ 100
scoreboard players operation $death_penalty _ -= _ _

# リセット
data remove storage km_solver: inputs
data remove storage km_solver: vars

# 一般式を代入
data modify storage km_solver: inputs append value {f:{mul: [{v: "X"}, {v: "R"}]}}

# 初期値を代入
data modify storage km_solver: vars set value {X:0.0f, R:0.0f}

# ステータス保存
execute store result storage km_solver: vars.R float 0.01 run scoreboard players get $death_penalty _
execute store result storage km_solver: vars.X float 1 run scoreboard players get @s CurrentXp

# 実行
execute at @p run function km_solver:solve

# 戻す
execute store result score @s CurrentXp run data get storage km_solver: outputs[0]
