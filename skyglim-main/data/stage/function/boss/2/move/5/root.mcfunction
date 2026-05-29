#> stage:boss/1/move/5/root
# 
# 飛び上がってダメージ（割合 50%）
# 200 start
# 

# 200: 召喚
execute if score s2 BossMoves matches 200 run function stage:boss/2/move/5/summon

# 220, 240, 260: countdown
execute if score s2 BossMoves matches 220 run function stage:boss/2/move/5/count-3
execute if score s2 BossMoves matches 240 run function stage:boss/2/move/5/count-2
execute if score s2 BossMoves matches 260 run function stage:boss/2/move/5/count-1

# 280: bomb
execute if score s2 BossMoves matches 280 run function stage:boss/2/move/5/bomb

# reset
execute if score s1 BossMoves matches 280.. run scoreboard players set s2 BossMoves 60
