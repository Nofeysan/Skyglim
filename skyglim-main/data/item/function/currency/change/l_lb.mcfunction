#> item:currency/change/l_lb
# 
# l x64 = lb x1
# 
# 

# 個数確認
execute store result score _ _ run clear @s *[minecraft:repair_cost=1001] 0

# 足りないとき
execute unless score _ _ matches 64.. run return run function item:currency/change/fail

# 本処理
clear @s *[minecraft:repair_cost=1001] 64
execute at @s run function item:currency/summon {l: 0, lb: 1, el: 0, elb: 0, pos: "~ ~ ~"}
