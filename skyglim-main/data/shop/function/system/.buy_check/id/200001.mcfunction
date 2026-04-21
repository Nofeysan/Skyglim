# 通貨チェック
execute unless score l Currency matches 12.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=1001] 12

# アイテムあげるね～
loot give @s loot shop:.give/weapon/tier1/short_sword

# 通知
function shop:system/.buy_check/id/.tell {id: "shop.item.tier-1.weapon.short-sword.name"}
