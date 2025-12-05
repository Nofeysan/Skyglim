###* enchantment
#! execute if predicate modify:enchantment/tool/fortune run function 通貨渡すやつ
execute if predicate modify:enchantment/tool/hitandaway run effect give @s minecraft:speed 7 0
execute if predicate modify:enchantment/tool/adrenaline run effect give @s minecraft:haste 7 0
execute if predicate modify:enchantment/tool/2win run effect give @s minecraft:strength 7 0












# 破壊リセット
scoreboard players reset @s IsSpawnerMined
