#> stage:boss/1/move/4/root
# 
# 移動速度上昇
# 
# 

# 召喚
# 2 + (players - 1)* 2 (n <= 4)
execute store result score $players _ if entity @a[distance=..75]

execute positioned 9460 35 -231 run function stage:boss/ex2/move/4/random_spawn
execute positioned 9460 35 -223 run function stage:boss/ex2/move/4/random_spawn
execute if score $players _ matches 2.. positioned 9460 35 -239 run function stage:boss/ex2/move/4/random_spawn
execute if score $players _ matches 2.. positioned 9460 35 -215 run function stage:boss/ex2/move/4/random_spawn
execute if score $players _ matches 3.. positioned 9474 35 -239 run function stage:boss/ex2/move/4/random_spawn
execute if score $players _ matches 3.. positioned 9474 35 -215 run function stage:boss/ex2/move/4/random_spawn
execute if score $players _ matches 4.. positioned 9474 35 -231 run function stage:boss/ex2/move/4/random_spawn
execute if score $players _ matches 4.. positioned 9474 35 -223 run function stage:boss/ex2/move/4/random_spawn

# score
scoreboard players set ex2 BossMoves -20
