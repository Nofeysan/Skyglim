# 1 Block 前に進む
execute positioned ~ ~-1 ~ if entity @e[predicate=entity:entity_enemy, distance=..1] run tag @n[predicate=entity:entity_enemy, distance=..1.5] add analyzed
execute if entity @e[distance=..40, tag=analyzed] run return run function damageapi:analyze/act/success

#! debug
#particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1

# ブロックの中・敵がいなかったら終わり
execute if entity @s[distance=..30] if block ~ ~ ~ minecraft:air positioned ^ ^ ^0.5 run function damageapi:analyze/act/search
execute if entity @s[distance=..30] unless block ~ ~ ~ minecraft:air run function damageapi:analyze/act/fail
execute unless entity @s[distance=..30] run function damageapi:analyze/act/fail

