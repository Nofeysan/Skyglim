###*
###* 何かしらのアイテムをクリックした後
###*

###* アイテムを判別します（無理やり）
# 通貨チェック
execute store result score t Currency run clear @s *[repair_cost=90002] 0

# 食料
execute if items entity @s player.cursor *[repair_cost=2102005] run function shop:system/.buy_check/id/token/2102005
execute if items entity @s player.cursor *[repair_cost=2102006] run function shop:system/.buy_check/id/token/2102006
execute if items entity @s player.cursor *[repair_cost=2102007] run function shop:system/.buy_check/id/token/2102007
execute if items entity @s player.cursor *[repair_cost=2102008] run function shop:system/.buy_check/id/token/2102008

###* アイテムを消しましょう
clear @s *[\
repair_cost=2102005 | repair_cost=2102006 | repair_cost=2102007 | repair_cost=2102008\
]

###* 元に戻す
function shop:system/token/2/inv_change
