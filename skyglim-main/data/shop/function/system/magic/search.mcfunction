###*
###* 何かしらのアイテムをクリックした後
###*

###* アイテムを判別します（無理やり）
# 通貨チェック
execute store result score l Currency run clear @s *[repair_cost=1001] 0
execute store result score lb Currency run clear @s *[repair_cost=1002] 0
execute store result score el Currency run clear @s *[repair_cost=1003] 0
execute store result score elb Currency run clear @s *[repair_cost=1004] 0

# 魔法
# Tier-1: 緑の杖・赤の杖
execute if items entity @s player.cursor *[repair_cost=270001] run function shop:system/.buy_check/id/270001
execute if items entity @s player.cursor *[repair_cost=270002] run function shop:system/.buy_check/id/270002
execute if items entity @s player.cursor *[repair_cost=270003] run function shop:system/.buy_check/id/270003
execute if items entity @s player.cursor *[repair_cost=270004] run function shop:system/.buy_check/id/270004

###* アイテムを消しましょう
clear @s *[\
repair_cost=270001 | repair_cost=270002 | repair_cost=270003 | repair_cost=270004\
]

###* 元に戻す
function shop:system/magic/inv_change
