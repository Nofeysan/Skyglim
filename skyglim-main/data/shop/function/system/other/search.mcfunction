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
execute if items entity @s player.cursor *[repair_cost=230000] run function shop:system/.buy_check/id/230000
execute if items entity @s player.cursor *[repair_cost=230001] run function shop:system/.buy_check/id/230001
execute if items entity @s player.cursor *[repair_cost=230002] run function shop:system/.buy_check/id/230002

# 紅茶 (HP回復)
execute if items entity @s player.cursor *[repair_cost=230010] run function shop:system/.buy_check/id/230010
execute if items entity @s player.cursor *[repair_cost=230011] run function shop:system/.buy_check/id/230011
execute if items entity @s player.cursor *[repair_cost=230012] run function shop:system/.buy_check/id/230012
execute if items entity @s player.cursor *[repair_cost=230013] run function shop:system/.buy_check/id/230013


# カクテル (MP回復)
execute if items entity @s player.cursor *[repair_cost=230020] run function shop:system/.buy_check/id/230020
execute if items entity @s player.cursor *[repair_cost=230021] run function shop:system/.buy_check/id/230021
execute if items entity @s player.cursor *[repair_cost=230022] run function shop:system/.buy_check/id/230022
execute if items entity @s player.cursor *[repair_cost=230023] run function shop:system/.buy_check/id/230023

# 矢
execute if items entity @s player.cursor *[repair_cost=230030] run function shop:system/.buy_check/id/230030
execute if items entity @s player.cursor *[repair_cost=230031] run function shop:system/.buy_check/id/230031

###* アイテムを消しましょう
clear @s *[\
repair_cost=230000 | repair_cost=230001 | repair_cost=230002 | \
repair_cost=230010 | repair_cost=230011 | repair_cost=230012 | repair_cost=230013 | \
repair_cost=230020 | repair_cost=230021 | repair_cost=230022 | repair_cost=230023 | \
repair_cost=230030 | repair_cost=230031 \
]

###* 元に戻す
function shop:system/other/inv_change
