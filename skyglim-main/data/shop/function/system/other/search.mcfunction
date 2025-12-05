###*
###* 何かしらのアイテムをクリックした後
###*

###* アイテムを判別します（無理やり）
# 通貨チェック
execute store result score l Currency run clear @s *[repair_cost=1001] 0
execute store result score lb Currency run clear @s *[repair_cost=1002] 0
execute store result score el Currency run clear @s *[repair_cost=1003] 0
execute store result score elb Currency run clear @s *[repair_cost=1004] 0

# 食料
execute if items entity @s player.cursor *[repair_cost=32000] run function shop:system/.buy_check/id/32000
execute if items entity @s player.cursor *[repair_cost=32001] run function shop:system/.buy_check/id/32001
execute if items entity @s player.cursor *[repair_cost=32002] run function shop:system/.buy_check/id/32002

# カクテル (MP回復)
execute if items entity @s player.cursor *[repair_cost=32200] run function shop:system/.buy_check/id/32200
execute if items entity @s player.cursor *[repair_cost=32201] run function shop:system/.buy_check/id/32201
execute if items entity @s player.cursor *[repair_cost=32202] run function shop:system/.buy_check/id/32202
execute if items entity @s player.cursor *[repair_cost=32203] run function shop:system/.buy_check/id/32203

# 矢
execute if items entity @s player.cursor *[repair_cost=34000] run function shop:system/.buy_check/id/34000
execute if items entity @s player.cursor *[repair_cost=34001] run function shop:system/.buy_check/id/34001

###* アイテムを消しましょう
clear @s *[\
repair_cost=32000 | repair_cost=32001 | repair_cost=32002 | \
repair_cost=32200 | repair_cost=32201 | repair_cost=32202 | repair_cost=32203 | \
repair_cost=32200 | repair_cost=32201 | repair_cost=32202 | repair_cost=32203 | \
repair_cost=34000 | repair_cost=34001 \
]

###* 元に戻す
function shop:system/other/inv_change

