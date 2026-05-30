#> stage:boss/1/move/root
# 
# ボス行動を行う
# at @n[predicate=entity:entity_enemy,tag=boss,tag=s1]
# 

# random
execute store result score s4-type BossMoves run random value 1..5

# 1: 上下移動
#execute if score s4-type BossMoves matches 1 run function stage:boss/4/move/1/root

# 2: 貫通弾
#execute if score s4-type BossMoves matches 2 run function stage:boss/4/move/2/root

# 3: AoE
#execute if score s4-type BossMoves matches 3 run function stage:boss/4/move/3/root

# 4: 眷属召喚
execute if score s4-type BossMoves matches 4 run function stage:boss/4/move/4/root

# 5: tp
execute if score s4-type BossMoves matches 5 run function stage:boss/4/move/5/root
