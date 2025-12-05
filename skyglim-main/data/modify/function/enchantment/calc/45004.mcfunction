##> modify:enchantment/calc/macro/legs
##* 
##* 死ななければいいのだろう？
##* 近くにn体いるとき、DEF x(1+0.1n), 上限n=10
##* 

execute at @s store result score EnemyCount Temp if entity @e[predicate=entity:entity_enemy, distance=..20]

execute if score EnemyCount Temp matches 1 run scoreboard players operation @s act_Defence *= #11 num
execute if score EnemyCount Temp matches 2 run scoreboard players operation @s act_Defence *= #12 num
execute if score EnemyCount Temp matches 3 run scoreboard players operation @s act_Defence *= #13 num
execute if score EnemyCount Temp matches 4 run scoreboard players operation @s act_Defence *= #14 num
execute if score EnemyCount Temp matches 5 run scoreboard players operation @s act_Defence *= #15 num
execute if score EnemyCount Temp matches 6 run scoreboard players operation @s act_Defence *= #16 num
execute if score EnemyCount Temp matches 7 run scoreboard players operation @s act_Defence *= #17 num
execute if score EnemyCount Temp matches 8 run scoreboard players operation @s act_Defence *= #18 num
execute if score EnemyCount Temp matches 9 run scoreboard players operation @s act_Defence *= #19 num

execute if score EnemyCount Temp matches 1..9 run scoreboard players operation @s act_Defence /= #10 num

execute if score EnemyCount Temp matches 10.. run scoreboard players operation @s act_Defence *= #2 num

# ついでにパーティクル
execute if score EnemyCount Temp matches 1.. at @s run particle minecraft:dust{color:[0.0313725490196078,0.4039215686274510,0.4627450980392160],scale:0.75} ~ ~ ~ 0.4 0.2 0.4 0 3

# リセット
scoreboard players reset EnemyCount Temp
