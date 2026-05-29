#> stage:boss/1/summon
# 
# ボス召喚
# 
# 

# ボタンとかを削除
fill ~ ~ ~ ~ ~2 ~ minecraft:air
setblock ~ ~ ~ minecraft:stone

# summon
execute positioned ~ ~2 ~ run function stage:boss/2/boss
scoreboard players set s2 BossMoves 120

# title
title @a[distance=..30] times 10 40 20
title @a[distance=..30] title {translate: "entity.stage.2.boss.name", color: "#be2152"}
title @a[distance=..30] subtitle {"text": "\ue011 Stage 2: Boss \ue010", color: "#746aac"}

# sound
playsound minecraft:entity.wither.spawn voice @a ~ ~ ~ 0.6 1
playsound minecraft:entity.wither.ambient voice @a ~ ~ ~ 0.8 1

particle minecraft:cloud ~ ~ ~ 1 2 1 0.1 300
particle minecraft:ash ~ ~ ~ 2 2 2 0.07 400

# bossbar
bossbar add minecraft:stage2.boss {translate: "entity.stage.2.boss.name", color: "#be2152"}
bossbar set minecraft:stage2.boss color green
bossbar set minecraft:stage2.boss visible true
bossbar set minecraft:stage2.boss players @a

# team
team add bomb.1
team modify bomb.1 color red
team add bomb.2
team modify bomb.2 color yellow
team add bomb.3
team modify bomb.3 color green
