# 通貨チェック
execute unless score l Currency matches 16.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=1001] 16

# アイテムあげるね～
loot give @s loot crafting:ingredients/fishing/rod/1

# 通知
function shop:system/.buy_check/id/.tell {id: "crafting.goods.fishing.t1.name"}
