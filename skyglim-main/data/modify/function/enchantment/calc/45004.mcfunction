##> modify:enchantment/calc/macro/legs
##* 
##* 死ななければいいのだろう？
##* 近くにn体いるとき、DEF x(1+0.1n), 上限n=10
##* 

execute at @s store result score EnemyCount Temp if entity @e[predicate=entity:entity_enemy, distance=..20]

execute if score EnemyCount Temp matches 1 run scoreboard players add def multi 10
execute if score EnemyCount Temp matches 2 run scoreboard players add def multi 20
execute if score EnemyCount Temp matches 3 run scoreboard players add def multi 30
execute if score EnemyCount Temp matches 4 run scoreboard players add def multi 40
execute if score EnemyCount Temp matches 5 run scoreboard players add def multi 50
execute if score EnemyCount Temp matches 6 run scoreboard players add def multi 60
execute if score EnemyCount Temp matches 7 run scoreboard players add def multi 70
execute if score EnemyCount Temp matches 8 run scoreboard players add def multi 80
execute if score EnemyCount Temp matches 9 run scoreboard players add def multi 90
execute if score EnemyCount Temp matches 10.. run scoreboard players add def multi 100

# ついでにパーティクル
#execute if score EnemyCount Temp matches 1.. at @s run particle minecraft:dust{color:[0.0313725490196078,0.4039215686274510,0.4627450980392160],scale:0.75} ~ ~ ~ 0.4 0.2 0.4 0 3

# リセット
scoreboard players reset EnemyCount Temp
