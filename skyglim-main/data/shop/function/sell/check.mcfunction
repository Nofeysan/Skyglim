#> shop:sell/check
# 
# data.sell があるか確認
# 
# 

# data ある？
execute store success score _ _ if data entity @n[type=minecraft:item] data.sell

# なし
execute if score _ _ matches 0 run return run function shop:sell/cant-sell

# あり（売却処理に）
function shop:sell/main
