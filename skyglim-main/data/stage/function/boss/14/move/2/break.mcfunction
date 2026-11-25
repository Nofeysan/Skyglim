#> stage:boss/14/move/2/break
# 
# 
# 
# 

execute unless score $s14.boss.half _ matches 1 positioned ~ 83 ~ run fill ~5.5 81 ~5.5 ~-5.5 81 ~-5.5 minecraft:air replace #stage:can_break_s14
execute if score $s14.boss.half _ matches 1 positioned ~ 83 ~ run fill ~7.5 81 ~7.5 ~-7.5 81 ~-7.5 minecraft:air replace #stage:can_break_s14
