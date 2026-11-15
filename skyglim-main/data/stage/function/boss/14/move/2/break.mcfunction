#> stage:boss/14/move/2/break
# 
# 
# 
# 

execute unless score $s14.boss.half _ matches 1 at @r[distance=..80] positioned ~ 83 ~ run fill ~4.5 81 ~4.5 ~-4.5 81 ~-4.5 minecraft:air replace #stage:can_break_s14
execute if score $s14.boss.half _ matches 1 at @r[distance=..80] positioned ~ 83 ~ run fill ~6.5 81 ~6.5 ~-6.5 81 ~-6.5 minecraft:air replace #stage:can_break_s14
