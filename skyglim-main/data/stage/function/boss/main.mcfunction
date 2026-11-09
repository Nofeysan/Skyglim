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
