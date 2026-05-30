# 通貨チェック
execute unless score t Currency matches 5.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=90003] 5

# アイテムあげるね～
loot give @s loot entity:mob_drop/4/restore/r-chest

# 通知
function shop:system/.buy_check/id/.tell {id: "stage.4.r-chest.name"}
