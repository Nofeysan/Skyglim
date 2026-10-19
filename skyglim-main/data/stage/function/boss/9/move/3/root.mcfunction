#> stage:boss/6/move/3/root
# 
# アイテム出しますよ
# 
# 

# tp 
execute if score s7 BossMoves matches 200..340 run tp @s ~ 2 ~

# AoE
execute if score s7 BossMoves matches 200 run function entity:aec_manager/summon/.cyl {r: 31, t: 140, dmg: 16, str: 18, id: 73}
execute if score s7 BossMoves matches 200 run playsound minecraft:entity.wither.spawn voice @a ~ ~ ~ 0.5 1.5

# reset
execute if score s7 BossMoves matches 340.. run scoreboard players set s7 BossMoves 80
