# 通貨チェック
execute unless score lb Currency matches 4.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=1002] 4

# アイテムあげるね～
loot give @s loot shop:.give/potion/royal_blend

# 通知
function shop:system/.buy_check/id/.tell {id: "shop.item.other.potion.hp.royal_blend.name"}
