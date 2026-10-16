# 通貨チェック
execute unless score t Currency matches 3.. run return run function shop:system/.buy_check/fail

# 通貨消す
clear @s *[repair_cost=90006] 3

# アイテムあげるね～
loot give @s loot entity:mob_drop/7/restore/e-shard.12

# 通知
function shop:system/.buy_check/id/.tell {id: "stage.7.e-shard.12.name"}
