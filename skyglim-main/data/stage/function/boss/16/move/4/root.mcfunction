#> stage:boss/1/move/4/root
# 
# 移動速度上昇
# 
# 

# 召喚
# 2 + (players - 1)* 2 (n <= 4)
execute store result score $players _ if entity @a[distance=..75]

execute positioned 9524 143 -504 run function stage:boss/16/move/4/random_spawn
execute positioned 9504 143 -504 run function stage:boss/16/move/4/random_spawn
execute if score $players _ matches 2.. positioned 9514 143 -514 run function stage:boss/16/move/4/random_spawn
execute if score $players _ matches 2.. positioned 9514 143 -494 run function stage:boss/16/move/4/random_spawn
execute if score $players _ matches 3.. positioned 9506 143 -512 run function stage:boss/16/move/4/random_spawn
execute if score $players _ matches 3.. positioned 9522 143 -496 run function stage:boss/16/move/4/random_spawn
execute if score $players _ matches 4.. positioned 9506 143 -496 run function stage:boss/16/move/4/random_spawn
execute if score $players _ matches 4.. positioned 9522 143 -512 run function stage:boss/16/move/4/random_spawn

# score
scoreboard players set s16 BossMoves 0
