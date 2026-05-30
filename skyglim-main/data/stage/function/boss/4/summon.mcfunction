#> stage:boss/1/summon
# 
# ボス召喚
# 
# 

# ボタンとかを削除
fill ~ ~ ~ ~ ~2 ~ minecraft:air
setblock ~ ~ ~ minecraft:polished_blackstone_bricks

# summon
execute positioned ~ ~2 ~ run function stage:boss/4/boss
scoreboard players set s4 BossMoves 120

# title
title @a[distance=..30] times 10 40 20
title @a[distance=..30] title {translate: "entity.stage.4.boss.name", color: "#be2152"}
title @a[distance=..30] subtitle {"text": "\ue011 Stage 4: Boss \ue010", color: "#746aac"}

# sound
playsound minecraft:entity.wither.spawn voice @a ~ ~ ~ 0.6 1
playsound minecraft:entity.wither.ambient voice @a ~ ~ ~ 0.8 1

particle minecraft:cloud ~ ~ ~ 1 2 1 0.1 300
particle minecraft:ash ~ ~ ~ 2 2 2 0.07 400

# bossbar
bossbar add minecraft:stage4.boss {translate: "entity.stage.4.boss.name", color: "#be2152"}
bossbar set minecraft:stage4.boss color green
bossbar set minecraft:stage4.boss visible true
bossbar set minecraft:stage4.boss players @a
