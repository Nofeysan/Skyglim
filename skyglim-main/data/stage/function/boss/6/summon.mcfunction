#> stage:boss/1/summon
# 
# ボス召喚
# 
# 

# ボタンとかを削除
fill ~ ~ ~ ~ ~2 ~ minecraft:air
setblock ~ ~ ~ minecraft:polished_blackstone_bricks

# summon
execute positioned ~ ~3 ~ run function stage:boss/6/boss
scoreboard players set s6 BossMoves 120

# title
title @a[distance=..30] times 10 40 20
title @a[distance=..30] title {translate: "entity.stage.6.boss.name", color: "#be2152"}
title @a[distance=..30] subtitle {"text": "\ue011 Stage 6: Boss \ue010", color: "#746aac"}

# sound
playsound minecraft:entity.wither.spawn voice @a ~ ~ ~ 0.6 1
playsound minecraft:entity.wither.ambient voice @a ~ ~ ~ 0.8 1

particle minecraft:cloud ~ ~ ~ 1 2 1 0.1 300
particle minecraft:ash ~ ~ ~ 2 2 2 0.07 400

# bossbar
bossbar add minecraft:stage6.boss {translate: "entity.stage.6.boss.name", color: "#be2152"}
bossbar set minecraft:stage6.boss color green
bossbar set minecraft:stage6.boss visible true
bossbar set minecraft:stage6.boss players @a
