# 通貨チェック
execute unless score l Currency matches 48.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=1001] 48

# アイテムあげるね～
loot give @s loot shop:.give/potion/lady_grey

# 通知
function shop:system/.buy_check/id/.tell {id: "shop.item.other.potion.hp.lady_grey.name"}
