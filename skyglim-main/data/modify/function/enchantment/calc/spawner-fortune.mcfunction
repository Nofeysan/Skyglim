#> modify:enchantment/calc/spawner-fortune
# 
# 
# 
# 

# random
execute store result score _ _ run random value 0..99

# 1(初期): 1L 50%
execute if score $stage_progress _ matches 1 if score _ _ matches 0..49 run function item:currency/summon {l: 1, lb: 0, el: 0, elb: 0, pos: "~ ~ ~"}

# 2(S2クリア後): 2L
execute if score $stage_progress _ matches 2 run function item:currency/summon {l: 1, lb: 0, el: 0, elb: 0, pos: "~ ~ ~"}
