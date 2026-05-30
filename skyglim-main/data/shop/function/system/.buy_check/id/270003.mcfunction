# 通貨チェック
execute unless score lb Currency matches 8.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=1002] 8

# アイテムあげるね～
loot give @s loot magic:300003

# 通知
function shop:system/.buy_check/id/.tell {id: "magic.haste.1.name"}
