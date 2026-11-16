#> stage:teleport/importants/6/act/init
# 
# 初期設定
# 
# 

# kill
effect give @e[predicate=entity:entity_enemy, distance=..100] minecraft:wind_charged 1 100
kill @e[tag=gimmick, distance=..100]

# bossbar
bossbar remove minecraft:stage16.boss

# score
scoreboard players set $s16.boss.slain _ 1

# tick score
scoreboard players set $s16.boss.slain.perform _ -1
