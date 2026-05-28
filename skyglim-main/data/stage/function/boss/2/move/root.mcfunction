#> stage:boss/1/move/root
# 
# ボス行動を行う
# at @n[predicate=entity:entity_enemy,tag=boss,tag=s1]
# 

# random
execute store result score s2-type BossMoves run random value 1..5

# 1: 自身の足元にでっかくAEC
execute if score s2-type BossMoves matches 1 run function stage:boss/1/move/1/root

# 2: 各プレイヤーの足元に AEC
execute if score s2-type BossMoves matches 2 run function stage:boss/1/move/2/root

# 3: 移動速度上昇
execute if score s2-type BossMoves matches 3 run function stage:boss/1/move/3/root

# 4: 眷属召喚
execute if score s2-type BossMoves matches 4 run function stage:boss/1/move/4/root

# 5: 地震
# 別途 tick で実行
