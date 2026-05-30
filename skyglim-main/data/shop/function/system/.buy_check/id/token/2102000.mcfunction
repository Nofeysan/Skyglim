# 通貨チェック
execute unless score t Currency matches 2.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=90002] 2

# アイテムあげるね～
loot give @s loot entity:mob_drop/2/restore/r-head

# 通知
function shop:system/.buy_check/id/.tell {id: "stage.2.r-head.name"}
