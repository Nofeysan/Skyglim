#> stage:boss/1/move/4/root
# 
# 移動速度上昇
# 
# 

# 召喚
# 2 + (players - 1)* 2 (n <= 4)
execute store result score $players _ if entity @a[distance=..50]

execute positioned 10449 285 -377 run function stage:boss/11/move/4/random_spawn
execute positioned 10449 285 -355 run function stage:boss/11/move/4/random_spawn
execute if score $players _ matches 2.. positioned 10438 285 -366 run function stage:boss/11/move/4/random_spawn
execute if score $players _ matches 2.. positioned 10460 285 -366 run function stage:boss/11/move/4/random_spawn
execute if score $players _ matches 3.. positioned 10443 285 -360 run function stage:boss/11/move/4/random_spawn
execute if score $players _ matches 3.. positioned 10455 285 -372 run function stage:boss/11/move/4/random_spawn
execute if score $players _ matches 4.. positioned 10455 285 -360 run function stage:boss/11/move/4/random_spawn
execute if score $players _ matches 4.. positioned 10443 285 -372 run function stage:boss/11/move/4/random_spawn

# score
scoreboard players set s11 BossMoves -20
