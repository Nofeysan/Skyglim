###*
###* 何かしらのアイテムをクリックした後
###*

###* アイテムを判別します（無理やり）
# 通貨チェック
execute store result score t Currency run clear @s *[repair_cost=90003] 0

# 
execute if items entity @s player.cursor *[repair_cost=2104000] run function shop:system/.buy_check/id/token/2104000
execute if items entity @s player.cursor *[repair_cost=2104001] run function shop:system/.buy_check/id/token/2104001
execute if items entity @s player.cursor *[repair_cost=2104002] run function shop:system/.buy_check/id/token/2104002
execute if items entity @s player.cursor *[repair_cost=2104003] run function shop:system/.buy_check/id/token/2104003
execute if items entity @s player.cursor *[repair_cost=2104004] run function shop:system/.buy_check/id/token/2104004

execute if items entity @s player.cursor *[repair_cost=2104005] run function shop:system/.buy_check/id/token/2104005
execute if items entity @s player.cursor *[repair_cost=2104006] run function shop:system/.buy_check/id/token/2104006
execute if items entity @s player.cursor *[repair_cost=2104007] run function shop:system/.buy_check/id/token/2104007
execute if items entity @s player.cursor *[repair_cost=2104008] run function shop:system/.buy_check/id/token/2104008

execute if items entity @s player.cursor *[repair_cost=2104009] run function shop:system/.buy_check/id/token/2104009
execute if items entity @s player.cursor *[repair_cost=2104010] run function shop:system/.buy_check/id/token/2104010
execute if items entity @s player.cursor *[repair_cost=2104011] run function shop:system/.buy_check/id/token/2104011
execute if items entity @s player.cursor *[repair_cost=2104012] run function shop:system/.buy_check/id/token/2104012
execute if items entity @s player.cursor *[repair_cost=2104013] run function shop:system/.buy_check/id/token/2104013

###* アイテムを消しましょう
clear @s *[\
repair_cost=2104000 | repair_cost=2104001 | repair_cost=2104002 | repair_cost=2104003 | repair_cost=2104004 |\
repair_cost=2104005 | repair_cost=2104006 | repair_cost=2104007 | repair_cost=2104008 | \
repair_cost=2104009 | repair_cost=2104010 | repair_cost=2104011 | repair_cost=2104012 | repair_cost=2104013\
]

###* 元に戻す
function shop:system/token/3/inv_change
