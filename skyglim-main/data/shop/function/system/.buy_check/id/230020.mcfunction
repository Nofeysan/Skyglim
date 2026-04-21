# 通貨チェック
execute unless score l Currency matches 12.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=1001] 12

# アイテムあげるね～
loot give @s loot shop:.give/potion/mocha_milk

# 通知
function shop:system/.buy_check/id/.tell {id: "shop.item.other.potion.mp.mocha_milk.name"}
