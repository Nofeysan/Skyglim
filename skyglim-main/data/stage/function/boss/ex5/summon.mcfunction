#> stage:boss/1/summon
# 
# ボス召喚
# 
# 

# ボタンとかを削除
fill ~ ~ ~ ~ ~2 ~ minecraft:air
setblock ~ ~ ~ minecraft:deepslate

# summon
execute positioned ~ ~3 ~ run function stage:boss/ex5/boss
scoreboard players set ex5 BossMoves 120
scoreboard players set $ex5.boss.half _ 0
scoreboard players set $ex5.boss.half.moved _ 0
scoreboard players set $ex5.campfire ex5.campfire 360

# title
title @a[distance=..100] times 10 40 20
title @a[distance=..100] title {translate: "entity.stage.ex5.boss.name", color: "#be2152"}
title @a[distance=..100] subtitle {"text": "\ue011 Special V: Boss \ue010", color: "#746aac"}

# sound
playsound minecraft:entity.wither.spawn voice @a ~ ~ ~ 0.6 1
playsound minecraft:entity.wither.ambient voice @a ~ ~ ~ 0.8 1

particle minecraft:cloud ~ ~ ~ 1 2 1 0.1 300
particle minecraft:ash ~ ~ ~ 2 2 2 0.07 400

# bossbar
bossbar add minecraft:stageex5.boss {translate: "entity.stage.ex5.boss.name", color: "#be2152"}
bossbar set minecraft:stageex5.boss color green
bossbar set minecraft:stageex5.boss visible true
bossbar set minecraft:stageex5.boss players @a
