###*
###* 何かしらのアイテムをクリックした後
###*

###* アイテムを判別します（無理やり）
# 通貨チェック
execute store result score l Currency run clear @s *[repair_cost=1001] 0
execute store result score lb Currency run clear @s *[repair_cost=1002] 0
execute store result score el Currency run clear @s *[repair_cost=1003] 0
execute store result score elb Currency run clear @s *[repair_cost=1004] 0

# 武器 tier-I
execute if items entity @s player.cursor *[repair_cost=200000] run function shop:system/.buy_check/id/200000
execute if items entity @s player.cursor *[repair_cost=200001] run function shop:system/.buy_check/id/200001
execute if items entity @s player.cursor *[repair_cost=200002] run function shop:system/.buy_check/id/200002
execute if items entity @s player.cursor *[repair_cost=200003] run function shop:system/.buy_check/id/200003
execute if items entity @s player.cursor *[repair_cost=200004] run function shop:system/.buy_check/id/200004

###* アイテムを消しましょう
clear @s *[\
repair_cost=200000 | repair_cost=200001 | repair_cost=200002 | repair_cost=200003 | repair_cost=200004]

###* 元に戻す
function shop:system/weapon/inv_change
