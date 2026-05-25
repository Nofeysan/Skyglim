#> item:currency/change/lb_l
# 
# lb x1 = l x64
# 
# 

# 個数確認
execute store result score _ _ run clear @s *[minecraft:repair_cost=1002] 0

# 足りないとき
execute unless score _ _ matches 1.. run return run function item:currency/change/fail

# 本処理
clear @s *[minecraft:repair_cost=1002] 1
execute at @s run function item:currency/summon {l: 64, lb: 0, el: 0, elb: 0, pos: "~ ~ ~"}
