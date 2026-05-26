#> stage:boss/1/summon
# 
# ボス召喚
# 
# 

# ボタンとかを削除
fill ~ ~ ~ ~ ~ ~ minecraft:air
setblock ~ ~ ~ minecraft:stone

# summon
function stage:boss/1/boss
scoreboard players set @n[predicate=entity:entity_enemy, tag=boss, tag=s1] BossMoves 120

# title
title @a[distance=..30] times 10 40 20
title @a[distance=..30] title {translate: "entity.stage.1.boss.name", color: "#be2152"}
title @a[distance=..30] subtitle {"text": "\ue011 Stage 1: Boss \ue010", color: "#746aac"}

# sound
playsound minecraft:entity.wither.spawn voice @a ~ ~ ~ 1 1
playsound minecraft:entity.wither.ambient voice @a ~ ~ ~ 1 1

particle minecraft:cloud ~ ~ ~ 1 2 1 0.1 300
particle minecraft:ash ~ ~ ~ 2 2 2 0.07 400

# bossbar
bossbar add minecraft:stage1.boss {translate: "entity.stage.1.boss.name", color: "#be2152"}
bossbar set minecraft:stage1.boss color blue
bossbar set minecraft:stage1.boss visible true
bossbar set minecraft:stage1.boss players @a
