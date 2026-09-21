#> stage:boss/1/move/4/root
# 
# 移動速度上昇
# 
# 

# 召喚
# 2 + (players - 1)* 2 (n <= 4)
execute store result score $players _ if entity @a[distance=..30]

execute positioned 10018 42 -184 run function stage:boss/6/move/4/random_spawn
execute positioned 10006 42 -172 run function stage:boss/6/move/4/random_spawn
execute if score $players _ matches 2.. positioned 10018 42 -172 run function stage:boss/6/move/4/random_spawn
execute if score $players _ matches 2.. positioned 10006 42 -184 run function stage:boss/6/move/4/random_spawn
execute if score $players _ matches 3.. positioned 10022 42 -178 run function stage:boss/6/move/4/random_spawn
execute if score $players _ matches 3.. positioned 10002 42 -178 run function stage:boss/6/move/4/random_spawn
execute if score $players _ matches 4.. positioned 10012 42 -187 run function stage:boss/6/move/4/random_spawn
execute if score $players _ matches 4.. positioned 10012 42 -169 run function stage:boss/6/move/4/random_spawn

# score
scoreboard players set s6 BossMoves 0
