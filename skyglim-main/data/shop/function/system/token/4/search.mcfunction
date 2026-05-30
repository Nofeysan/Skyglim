###*
###* 何かしらのアイテムをクリックした後
###*

###* アイテムを判別します（無理やり）
# 通貨チェック
execute store result score t Currency run clear @s *[repair_cost=90004] 0

# 
execute if items entity @s player.cursor *[repair_cost=2104100] run function shop:system/.buy_check/id/token/2104100
execute if items entity @s player.cursor *[repair_cost=2104101] run function shop:system/.buy_check/id/token/2104101
execute if items entity @s player.cursor *[repair_cost=2104102] run function shop:system/.buy_check/id/token/2104102
execute if items entity @s player.cursor *[repair_cost=2104103] run function shop:system/.buy_check/id/token/2104103
execute if items entity @s player.cursor *[repair_cost=2104104] run function shop:system/.buy_check/id/token/2104104

execute if items entity @s player.cursor *[repair_cost=2104105] run function shop:system/.buy_check/id/token/2104105
execute if items entity @s player.cursor *[repair_cost=2104106] run function shop:system/.buy_check/id/token/2104106
execute if items entity @s player.cursor *[repair_cost=2104107] run function shop:system/.buy_check/id/token/2104107
execute if items entity @s player.cursor *[repair_cost=2104108] run function shop:system/.buy_check/id/token/2104108

execute if items entity @s player.cursor *[repair_cost=2104109] run function shop:system/.buy_check/id/token/2104109
execute if items entity @s player.cursor *[repair_cost=2104110] run function shop:system/.buy_check/id/token/2104110
execute if items entity @s player.cursor *[repair_cost=2104111] run function shop:system/.buy_check/id/token/2104111
execute if items entity @s player.cursor *[repair_cost=2104112] run function shop:system/.buy_check/id/token/2104112

###* アイテムを消しましょう
clear @s *[\
repair_cost=2104100 | repair_cost=2104101 | repair_cost=2104102 | repair_cost=2104103 | repair_cost=2104104 |\
repair_cost=2104105 | repair_cost=2104106 | repair_cost=2104107 | repair_cost=2104108 | \
repair_cost=2104109 | repair_cost=2104110 | repair_cost=2104111 | repair_cost=2104112\
]

###* 元に戻す
function shop:system/token/4/inv_change
