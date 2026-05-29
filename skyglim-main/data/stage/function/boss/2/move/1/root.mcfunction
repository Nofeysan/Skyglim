#> stage:boss/2/move/1/root
# 
# デバフ
# at boss
# 

# 200~220: 警告
execute if score s2 BossMoves matches 200 run function stage:boss/2/move/1/warn

execute if score s2 BossMoves matches 220 run function stage:boss/2/move/1/debuff

# score
execute if score s2 BossMoves matches 220.. run scoreboard players set s2 BossMoves 60
