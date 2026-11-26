#> stage:boss/1/move/root
# 
# ボス行動を行う
# at @n[predicate=entity:entity_enemy,tag=boss,tag=s1]
# 

# random
execute store result score s16-type BossMoves run random value 1..6

# 1: 上下移動
#execute if score s6-type BossMoves matches 1 run function stage:boss/4/move/1/root

# 2: 貫通弾
#execute if score s6-type BossMoves matches 2 run function stage:boss/4/move/2/root

# 3: bat
execute if score s16-type BossMoves matches 3 run function stage:boss/16/move/3/root

# 4: 眷属召喚
execute if score s16-type BossMoves matches 4 run function stage:boss/16/move/4/root
