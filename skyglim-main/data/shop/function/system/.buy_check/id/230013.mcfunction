# 通貨チェック
execute unless score el Currency matches 2.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=1003] 2

# アイテムあげるね～
loot give @s loot shop:.give/potion/queens_choise

# 通知
function shop:system/.buy_check/id/.tell {id: "shop.item.other.potion.hp.queens_choise.name"}
