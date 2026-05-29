#> stage:boss/1/move/root
# 
# ボス行動を行う
# at @n[predicate=entity:entity_enemy,tag=boss,tag=s1]
# 

# random
execute store result score s2-type BossMoves run random value 1..5

# 1: デバフ付与
# 別途 tick で実行

# 2: 眷属召喚
execute if score s2-type BossMoves matches 2 run function stage:boss/2/move/2/root

# 3: AoE召喚
# 別途 tick で実行

# 4: 6方向射撃
# 別途 tick で実行

# 5: 小型爆弾召喚
# 別途 tick で実行
