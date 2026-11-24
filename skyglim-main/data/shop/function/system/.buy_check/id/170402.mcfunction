# 通貨チェック
execute unless score lb Currency matches 2.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=1002] 2

# アイテムあげるね～
loot give @s loot crafting:ingredients/fishing/rod/2

# 通知
function shop:system/.buy_check/id/.tell {id: "crafting.goods.fishing.t2.name"}
