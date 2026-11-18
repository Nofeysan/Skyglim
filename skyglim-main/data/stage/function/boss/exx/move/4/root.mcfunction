#> stage:boss/1/move/4/root
# 
# 移動速度上昇
# 
# 

# 召喚
# 2 + (players - 1)* 2 (n <= 4)
execute store result score $players _ if entity @a[distance=..75]

execute positioned 10277 24 -76 run function stage:boss/ex5/move/4/random_spawn
execute positioned 10277 24 -110 run function stage:boss/ex5/move/4/random_spawn
execute if score $players _ matches 2.. positioned 10294 24 -93 run function stage:boss/ex5/move/4/random_spawn
execute if score $players _ matches 2.. positioned 10260 24 -93 run function stage:boss/ex5/move/4/random_spawn
execute if score $players _ matches 3.. positioned 10291 24 -105 run function stage:boss/ex5/move/4/random_spawn
execute if score $players _ matches 3.. positioned 10265 24 -81 run function stage:boss/ex5/move/4/random_spawn
execute if score $players _ matches 4.. positioned 10265 24 -105 run function stage:boss/ex5/move/4/random_spawn
execute if score $players _ matches 4.. positioned 10291 24 -81 run function stage:boss/ex5/move/4/random_spawn

# score
scoreboard players set ex5 BossMoves 0
