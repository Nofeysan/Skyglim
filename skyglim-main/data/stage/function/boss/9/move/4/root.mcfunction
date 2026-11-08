#> stage:boss/1/move/4/root
# 
# 移動速度上昇
# 
# 

# 召喚
# 2 + (players - 1)* 2 (n <= 4)
execute store result score $players _ if entity @a[distance=..30]

execute positioned 10407 -6 317 run function stage:boss/9/move/4/random_spawn
execute positioned 10407 -6 293 run function stage:boss/9/move/4/random_spawn
execute if score $players _ matches 2.. positioned 10395 -6 306 run function stage:boss/9/move/4/random_spawn
execute if score $players _ matches 2.. positioned 10420 -6 306 run function stage:boss/9/move/4/random_spawn
execute if score $players _ matches 3.. positioned 10411 -6 303 run function stage:boss/9/move/4/random_spawn
execute if score $players _ matches 3.. positioned 10405 -6 309 run function stage:boss/9/move/4/random_spawn
execute if score $players _ matches 4.. positioned 10411 -6 309 run function stage:boss/9/move/4/random_spawn
execute if score $players _ matches 4.. positioned 10405 -6 303 run function stage:boss/9/move/4/random_spawn

# score
scoreboard players set s9 BossMoves 0
