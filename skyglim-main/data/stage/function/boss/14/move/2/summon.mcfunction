#> stage:boss/14/move/2/summon
# 
# 召喚する
# 
# 

kill @e[type=minecraft:marker, tag=gimmick.break.s14]
execute at @r[distance=..80] positioned ~ 88 ~ run summon minecraft:marker ~ ~ ~ {Tags: ["gimmick", "gimmick.break.s14"]}
execute unless score $s14.boss.half _ matches 1 at @r[distance=..80] positioned ~ 82 ~ run function entity:aec_manager/summon/.square {r: 11, t: 40, dmg: 58, str: 43, id: 141}
execute if score $s14.boss.half _ matches 1 at @r[distance=..80] positioned ~ 82 ~ run function entity:aec_manager/summon/.square {r: 15, t: 40, dmg: 58, str: 43, id: 141}
