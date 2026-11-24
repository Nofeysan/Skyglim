# 通貨チェック
execute unless score lb Currency matches 3.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=1002] 3

# アイテムあげるね～
loot give @s loot crafting:ingredients/fishing/book/tier1

# 通知
function shop:system/.buy_check/id/.tell {id: "crafting.ingredients.fishing.book.1.name"}
