# 通貨チェック
execute unless score l Currency matches 2.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=1001] 2

# アイテムあげるね～
loot give @s loot shop:.give/arrow/normal

# 通知
function shop:system/.buy_check/id/.tell {id: "shop.item.other.arrow.normal.name"}
