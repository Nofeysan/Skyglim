# 通貨チェック
execute unless score el Currency matches 1.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=1003] 1

# アイテムあげるね～
loot give @s loot magic:400102

# 通知
function shop:system/.buy_check/id/.tell {id: "magic.fire.2.name"}
