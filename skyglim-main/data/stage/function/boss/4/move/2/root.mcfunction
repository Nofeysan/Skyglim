#> stage:boss/4/move/2/root
# 
# プレイヤーのいた場所に貫通弾
# 
# 

# 予告
execute if score s4 BossMoves matches 200 run function stage:boss/4/move/2/pre

# shoot
execute if score s4 BossMoves matches 230 as @e[distance=..30, tag=gimmick.beam, type=minecraft:item] at @s run function stage:boss/4/move/2/shoot
execute if score s4 BossMoves matches 231 run function stage:boss/4/move/2/kill

# reset
execute if score s4 BossMoves matches 231.. run scoreboard players set s4 BossMoves 60
