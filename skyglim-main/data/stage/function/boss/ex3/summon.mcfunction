#> stage:boss/1/summon
# 
# ボス召喚
# 
# 

# ボタンとかを削除
fill ~ ~ ~ ~ ~2 ~ minecraft:air
setblock ~ ~ ~ minecraft:deepslate

# summon
execute positioned ~ ~3 ~ run function stage:boss/ex3/boss
scoreboard players set ex3 BossMoves 120
scoreboard players set $ex3.boss.half _ 0
scoreboard players set $ex3.boss.half.moved _ 0
scoreboard players set $ex3.init _ 0

# title
title @a[distance=..100] times 10 40 20
title @a[distance=..100] title {translate: "entity.stage.ex3.boss.name", color: "#be2152"}
title @a[distance=..100] subtitle {"text": "\ue011 Special III: Boss \ue010", color: "#746aac"}

# sound
playsound minecraft:entity.wither.spawn voice @a ~ ~ ~ 0.6 1
playsound minecraft:entity.wither.ambient voice @a ~ ~ ~ 0.8 1

particle minecraft:cloud ~ ~ ~ 1 2 1 0.1 300
particle minecraft:ash ~ ~ ~ 2 2 2 0.07 400

# bossbar
bossbar add minecraft:stageex3.boss {translate: "entity.stage.ex3.boss.name", color: "#be2152"}
bossbar set minecraft:stageex3.boss color green
bossbar set minecraft:stageex3.boss visible true
bossbar set minecraft:stageex3.boss players @a
