###*
###* 何かしらのアイテムをクリックした後
###*

###* アイテムを判別します（無理やり）
# 通貨チェック
execute store result score t Currency run clear @s *[repair_cost=90006] 0

# 
execute if items entity @s player.cursor *[repair_cost=2107000] run function shop:system/.buy_check/id/token/2107000
execute if items entity @s player.cursor *[repair_cost=2107001] run function shop:system/.buy_check/id/token/2107001
execute if items entity @s player.cursor *[repair_cost=2107002] run function shop:system/.buy_check/id/token/2107002
execute if items entity @s player.cursor *[repair_cost=2107003] run function shop:system/.buy_check/id/token/2107003
execute if items entity @s player.cursor *[repair_cost=2107004] run function shop:system/.buy_check/id/token/2107004

execute if items entity @s player.cursor *[repair_cost=2107005] run function shop:system/.buy_check/id/token/2107005
execute if items entity @s player.cursor *[repair_cost=2107006] run function shop:system/.buy_check/id/token/2107006
execute if items entity @s player.cursor *[repair_cost=2107007] run function shop:system/.buy_check/id/token/2107007
execute if items entity @s player.cursor *[repair_cost=2107008] run function shop:system/.buy_check/id/token/2107008

execute if items entity @s player.cursor *[repair_cost=2107009] run function shop:system/.buy_check/id/token/2107009
execute if items entity @s player.cursor *[repair_cost=2107010] run function shop:system/.buy_check/id/token/2107010
execute if items entity @s player.cursor *[repair_cost=2107011] run function shop:system/.buy_check/id/token/2107011
execute if items entity @s player.cursor *[repair_cost=2107012] run function shop:system/.buy_check/id/token/2107012

###* アイテムを消しましょう
clear @s *[\
repair_cost=2107000 | repair_cost=2107001 | repair_cost=2107002 | repair_cost=2107003 | repair_cost=2107004 |\
repair_cost=2107005 | repair_cost=2107006 | repair_cost=2107007 | repair_cost=2107008 | \
repair_cost=2107009 | repair_cost=2107010 | repair_cost=2107011 | repair_cost=2107012\
]

###* 元に戻す
function shop:system/token/6/inv_change
