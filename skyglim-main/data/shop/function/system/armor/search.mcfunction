###*
###* 何かしらのアイテムをクリックした後
###*

###* アイテムを判別します（無理やり）
# 通貨チェック
execute store result score l Currency run clear @s *[repair_cost=1001] 0
execute store result score lb Currency run clear @s *[repair_cost=1002] 0
execute store result score el Currency run clear @s *[repair_cost=1003] 0
execute store result score elb Currency run clear @s *[repair_cost=1004] 0

# tier-I
execute if items entity @s player.cursor *[repair_cost=31000] run function shop:system/.buy_check/id/31000
execute if items entity @s player.cursor *[repair_cost=31001] run say 31001
execute if items entity @s player.cursor *[repair_cost=31001] run function shop:system/.buy_check/id/31001
execute if items entity @s player.cursor *[repair_cost=31002] run function shop:system/.buy_check/id/31002
execute if items entity @s player.cursor *[repair_cost=31003] run function shop:system/.buy_check/id/31003

###* アイテムを消しましょう
clear @s *[\
repair_cost=31000 | repair_cost=31001 | repair_cost=31002 | repair_cost=31003 |\
repair_cost=31000 | repair_cost=31001 | repair_cost=31002 | repair_cost=31003 \
]

###* 元に戻す
function shop:system/armor/inv_change

