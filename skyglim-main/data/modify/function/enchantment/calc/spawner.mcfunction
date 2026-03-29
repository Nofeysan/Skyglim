#> modify:enchantment/calc/spawner
# 
# スポナーを壊した後の処理
# 
# 

execute if predicate modify:enchantment/tool/fortune run function modify:enchantment/calc/spawner-fortune
execute if predicate modify:enchantment/tool/hitandaway run function modify:enchantment/calc/spawner-hitandaway
execute if predicate modify:enchantment/tool/adrenaline run function modify:enchantment/calc/spawner-adrenaline
execute if predicate modify:enchantment/tool/2win run function modify:enchantment/calc/spawner-2win

# 破壊リセット
scoreboard players reset @s IsSpawnerMined
