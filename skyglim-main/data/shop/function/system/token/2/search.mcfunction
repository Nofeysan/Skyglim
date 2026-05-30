###*
###* 何かしらのアイテムをクリックした後
###*

###* アイテムを判別します（無理やり）
# 通貨チェック
execute store result score t Currency run clear @s *[repair_cost=90002] 0

# 食料
execute if items entity @s player.cursor *[repair_cost=2102000] run function shop:system/.buy_check/id/token/2102000
execute if items entity @s player.cursor *[repair_cost=2102001] run function shop:system/.buy_check/id/token/2102001
execute if items entity @s player.cursor *[repair_cost=2102002] run function shop:system/.buy_check/id/token/2102002
execute if items entity @s player.cursor *[repair_cost=2102003] run function shop:system/.buy_check/id/token/2102003

###* アイテムを消しましょう
clear @s *[\
repair_cost=2102000 | repair_cost=2102001 | repair_cost=2102002 | repair_cost=2102003\
]

###* 元に戻す
function shop:system/token/2/inv_change
