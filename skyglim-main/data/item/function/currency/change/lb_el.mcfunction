#> item:currency/change/lb_el
# 
# lb x64 = el x1
# 
# 

# 個数確認
execute store result score _ _ run clear @s *[minecraft:repair_cost=1002] 0

# 足りないとき
execute unless score _ _ matches 64.. run return run function item:currency/change/fail

# 本処理
clear @s *[minecraft:repair_cost=1002] 64
execute at @s run function item:currency/summon {l: 0, lb: 0, el: 1, elb: 0, pos: "~ ~ ~"}
