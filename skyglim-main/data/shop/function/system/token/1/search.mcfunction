###*
###* 何かしらのアイテムをクリックした後
###*

###* アイテムを判別します（無理やり）
# 通貨チェック
execute store result score t Currency run clear @s *[repair_cost=90001] 0

# 食料
execute if items entity @s player.cursor *[repair_cost=2101100] run function shop:system/.buy_check/id/token/2101100
execute if items entity @s player.cursor *[repair_cost=2101101] run function shop:system/.buy_check/id/token/2101101
execute if items entity @s player.cursor *[repair_cost=2101102] run function shop:system/.buy_check/id/token/2101102
execute if items entity @s player.cursor *[repair_cost=2101103] run function shop:system/.buy_check/id/token/2101103
execute if items entity @s player.cursor *[repair_cost=2101104] run function shop:system/.buy_check/id/token/2101104

###* アイテムを消しましょう
clear @s *[\
repair_cost=2101100 | repair_cost=2101101 | repair_cost=2101102 | repair_cost=2101103 | repair_cost=2101104\
]

###* 元に戻す
function shop:system/token/1/inv_change
