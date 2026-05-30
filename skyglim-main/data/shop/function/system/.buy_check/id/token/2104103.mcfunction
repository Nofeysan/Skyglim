# 通貨チェック
execute unless score t Currency matches 3.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=90004] 3

# アイテムあげるね～
loot give @s loot entity:mob_drop/4/restore/e-bow

# 通知
function shop:system/.buy_check/id/.tell {id: "stage.4.e-bow.name"}
