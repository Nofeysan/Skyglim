##> modify:enchantment/calc/macro/chest
##* 
##* 正々堂々の真っ向勝負
##* 近くに敵が1体だけの時、STR x1.2
##* 

# 敵の数を取得 + 実行
execute at @s store result score EnemyCount Temp if entity @e[predicate=entity:entity_enemy, distance=..20]

# STR
execute if score EnemyCount Temp matches 1 run scoreboard players operation @s act_Strength *= #12 num
execute if score EnemyCount Temp matches 1 run scoreboard players operation @s act_Strength /= #10 num

# ついでにパーティクル
execute if score EnemyCount Temp matches 1 at @s run particle minecraft:dust{color:[0.5803921568627450,0.1490196078431370,0.0078431372549020],scale:0.75} ~ ~ ~ 0.4 0.2 0.4 0 3

# リセット
scoreboard players reset EnemyCount Temp
