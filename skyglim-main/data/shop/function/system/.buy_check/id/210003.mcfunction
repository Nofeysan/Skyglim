# 通貨チェック
execute unless score l Currency matches 4.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=1001] 4

# アイテムあげるね～
loot give @s loot shop:.give/armor/tier1/boots

# 通知
function shop:system/.buy_check/id/.tell {id: "shop.item.tier-1.armor.boots.name"}
