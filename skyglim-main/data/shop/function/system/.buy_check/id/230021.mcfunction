# 通貨チェック
execute unless score l Currency matches 32.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=1001] 32

# アイテムあげるね～
loot give @s loot shop:.give/potion/misty

# 通知
function shop:system/.buy_check/id/.tell {id: "shop.item.other.potion.mp.misty.name"}
