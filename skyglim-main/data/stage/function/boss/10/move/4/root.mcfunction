#> stage:boss/1/move/4/root
# 
# 移動速度上昇
# 
# 

# 召喚
# 2 + (players - 1)* 2 (n <= 4)
execute store result score $players _ if entity @a[distance=..30]

execute positioned 9788 1 -358 run function stage:boss/7/move/4/random_spawn
execute positioned 9808 1 -358 run function stage:boss/7/move/4/random_spawn
execute if score $players _ matches 2.. positioned 9798 1 -368 run function stage:boss/7/move/4/random_spawn
execute if score $players _ matches 2.. positioned 9798 1 -348 run function stage:boss/7/move/4/random_spawn
execute if score $players _ matches 3.. positioned 9791 1 -365 run function stage:boss/7/move/4/random_spawn
execute if score $players _ matches 3.. positioned 9805 1 -351 run function stage:boss/7/move/4/random_spawn
execute if score $players _ matches 4.. positioned 9791 1 -351 run function stage:boss/7/move/4/random_spawn
execute if score $players _ matches 4.. positioned 9805 1 -365 run function stage:boss/7/move/4/random_spawn

# score
scoreboard players set s7 BossMoves 0
