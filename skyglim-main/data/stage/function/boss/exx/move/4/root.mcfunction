#> stage:boss/1/move/4/root
# 
# 移動速度上昇
# 
# 

# 召喚
# 2 + (players - 1)* 2 (n <= 4)
execute store result score $players _ if entity @a[distance=..75]

execute positioned 9305 147 -405 run function stage:boss/exx/move/4/random_spawn
execute positioned 9285 147 -405 run function stage:boss/exx/move/4/random_spawn
execute if score $players _ matches 2.. positioned 9295 147 -395 run function stage:boss/exx/move/4/random_spawn
execute if score $players _ matches 2.. positioned 9295 147 -415 run function stage:boss/exx/move/4/random_spawn
execute if score $players _ matches 3.. positioned 9303 147 -397 run function stage:boss/exx/move/4/random_spawn
execute if score $players _ matches 3.. positioned 9287 147 -413 run function stage:boss/exx/move/4/random_spawn
execute if score $players _ matches 4.. positioned 9287 147 -397 run function stage:boss/exx/move/4/random_spawn
execute if score $players _ matches 4.. positioned 9303 147 -413 run function stage:boss/exx/move/4/random_spawn

# score
scoreboard players set exx BossMoves 40
