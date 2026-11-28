#> stage:boss/1/summon
# 
# ボス召喚
# 
# 

# ボタンとかを削除
fill ~ ~ ~ ~ ~2 ~ minecraft:air
setblock ~ ~ ~ minecraft:gray_stained_glass

# summon
execute positioned ~ ~3 ~ run function stage:boss/exx/boss
scoreboard players set exx BossMoves 180
scoreboard players set $exx.boss.half _ 0
scoreboard players set $exx.boss.half.moved _ 0
scoreboard players set $exx.boss.init _ 0

function aj:skyglim/cecile/remove/all
execute positioned ~ ~3 ~ run function aj:skyglim/cecile/summon {args: {}}

# 入場扱いにする
scoreboard players set _ stage.ex.x 1

fill 9294 147 -422 9296 147 -422 minecraft:polished_andesite
fill 9294 148 -422 9296 148 -422 minecraft:smooth_stone_slab[type=bottom]
fill 9294 151 -422 9296 149 -422 minecraft:barrier

# title
title @a[distance=..100] times 10 40 20
title @a[distance=..100] title {translate: "entity.stage.exx.boss.name", color: "#be2152"}
title @a[distance=..100] subtitle {"text": "\ue011 Special X: Boss \ue010", color: "#746aac"}

# sound
playsound minecraft:entity.wither.spawn voice @a ~ ~ ~ 0.6 1
playsound minecraft:entity.wither.ambient voice @a ~ ~ ~ 0.8 1

particle minecraft:cloud ~ ~ ~ 1 2 1 0.1 300
particle minecraft:ash ~ ~ ~ 2 2 2 0.07 400

# bossbar
bossbar add minecraft:stageexx.boss {translate: "entity.stage.exx.boss.name", color: "#be2152"}
bossbar set minecraft:stageexx.boss color green
bossbar set minecraft:stageexx.boss visible true
bossbar set minecraft:stageexx.boss players @a
