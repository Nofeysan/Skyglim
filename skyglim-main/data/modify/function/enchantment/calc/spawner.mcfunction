#> modify:enchantment/calc/spawner
# 
# スポナーを壊した後の処理
# 
# 

# xp
execute store result score _ _ run random value 0..99
execute if score _ _ matches 0..49 run xp add @a[distance=..15] 15 points
execute if score _ _ matches 50..74 run xp add @a[distance=..15] 25 points
execute if score _ _ matches 75..84 run xp add @a[distance=..15] 40 points
execute if score _ _ matches 85..92 run xp add @a[distance=..15] 75 points
execute if score _ _ matches 93..97 run xp add @a[distance=..15] 150 points
execute if score _ _ matches 98..99 run xp add @a[distance=..15] 250 points

execute if predicate modify:enchantment/tool/fortune run function modify:enchantment/calc/spawner-fortune
execute if predicate modify:enchantment/tool/hitandaway run function modify:enchantment/calc/spawner-hitandaway
execute if predicate modify:enchantment/tool/adrenaline run function modify:enchantment/calc/spawner-adrenaline
execute if predicate modify:enchantment/tool/2win run function modify:enchantment/calc/spawner-2win

# 破壊リセット
scoreboard players reset @s IsSpawnerMined
