#> stage:boss/main
# 
# ボスがいる場合の tick 処理
# 
# 

# s1~
execute if entity @n[tag=boss, tag=s1] run function stage:boss/1/tick
execute if entity @n[tag=boss, tag=s2] run function stage:boss/2/tick
execute if entity @n[tag=boss, tag=s4] run function stage:boss/4/tick
execute if entity @n[tag=boss, tag=s6] run function stage:boss/6/tick
execute if entity @n[tag=boss, tag=s7] run function stage:boss/7/tick

execute if entity @n[tag=boss, tag=s9] run function stage:boss/9/tick

execute if entity @n[tag=boss, tag=s10] run function stage:boss/10/tick
execute if entity @n[tag=boss, tag=s11] run function stage:boss/11/tick
execute if entity @n[tag=boss, tag=s12] run function stage:boss/12/tick
execute if entity @n[tag=boss, tag=s13] run function stage:boss/13/tick
execute if entity @n[tag=boss, tag=s14] run function stage:boss/14/tick
execute if entity @n[tag=boss, tag=s15] run function stage:boss/15/tick
execute if entity @n[tag=boss, tag=s16] run function stage:boss/16/tick

execute if entity @n[tag=boss, tag=ex2] run function stage:boss/ex2/tick
execute if entity @n[tag=boss, tag=ex3] run function stage:boss/ex3/tick
execute if entity @n[tag=boss, tag=ex5] run function stage:boss/ex5/tick
