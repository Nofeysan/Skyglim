#> stage:boss/4/move/2/root
# 
# プレイヤーのいた場所に貫通弾
# 
# 

# 予告
execute if score ex5 BossMoves matches 200 run function stage:boss/ex5/move/1/pre
execute if score ex5 BossMoves matches 220 run function stage:boss/ex5/move/1/pre
execute if score ex5 BossMoves matches 240 run function stage:boss/ex5/move/1/pre

# shoot
execute if score ex5 BossMoves matches 260 as @e[distance=..80, tag=gimmick.beam, type=minecraft:item] at @s run function stage:boss/ex5/move/1/shoot
execute if score ex5 BossMoves matches 261 run function stage:boss/ex5/move/1/kill

# reset
execute if score ex5 BossMoves matches 261.. run scoreboard players set ex5 BossMoves 100
