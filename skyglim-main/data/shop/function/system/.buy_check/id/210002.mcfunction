# 通貨チェック
execute unless score l Currency matches 8.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=1001] 8

# アイテムあげるね～
loot give @s loot shop:.give/armor/tier1/legs

# 通知
function shop:system/.buy_check/id/.tell {id: "shop.item.tier-1.armor.legs.name"}
