# 通貨チェック
execute unless score l Currency matches 16.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=1001] 16

# アイテムあげるね～
loot give @s loot shop:.give/potion/caramel_tea

# 通知
function shop:system/.buy_check/id/.tell {id: "shop.item.other.potion.hp.caramel_tea.name"}
