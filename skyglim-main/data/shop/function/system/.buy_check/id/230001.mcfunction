# 通貨チェック
execute unless score lb Currency matches 1.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=1002] 1

# アイテムあげるね～
loot give @s loot shop:.give/food/heart_berry

# 通知
function shop:system/.buy_check/id/.tell {id: "shop.item.other.food.heart_berry.name"}

