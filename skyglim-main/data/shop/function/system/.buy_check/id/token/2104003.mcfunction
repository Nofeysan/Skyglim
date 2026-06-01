# 通貨チェック
execute unless score t Currency matches 4.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=90003] 4

# アイテムあげるね～
loot give @s loot entity:mob_drop/4/restore/r-bow

# 通知
function shop:system/.buy_check/id/.tell {id: "stage.4.r-bow.name"}
