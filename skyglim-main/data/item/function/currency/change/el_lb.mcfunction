#> item:currency/change/el_lb
# 
# el x1 = lb x64
# 
# 

# 個数確認
execute store result score _ _ run clear @s *[minecraft:repair_cost=1003] 0

# 足りないとき
execute unless score _ _ matches 1.. run return run function item:currency/change/fail

# 本処理
clear @s *[minecraft:repair_cost=1003] 1
execute at @s run function item:currency/summon {l: 0, lb: 64, el: 0, elb: 0, pos: "~ ~ ~"}
