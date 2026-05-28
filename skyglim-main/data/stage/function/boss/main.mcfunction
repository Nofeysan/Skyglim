#> stage:boss/main
# 
# ボスがいる場合の tick 処理
# 
# 

# s1~
execute if entity @n[predicate=entity:entity_enemy, tag=boss, tag=s1] run function stage:boss/1/tick
execute if entity @n[predicate=entity:entity_enemy, tag=boss, tag=s2] run function stage:boss/2/tick
