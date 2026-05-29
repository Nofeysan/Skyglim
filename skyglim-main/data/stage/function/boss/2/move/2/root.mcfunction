#> stage:boss/1/move/4/root
# 
# 移動速度上昇
# 
# 

# 召喚
# 2 + (players - 1)* 2 (n <= 4)
execute store result score $players _ if entity @a[distance=..30]

execute positioned 9869 22 -84 run function stage:boss/2/move/2/random_spawn
execute positioned 9887 22 -83 run function stage:boss/2/move/2/random_spawn
execute if score $players _ matches 2.. positioned 9878 22 -75 run function stage:boss/2/move/2/random_spawn
execute if score $players _ matches 2.. positioned 9878 22 -94 run function stage:boss/2/move/2/random_spawn
execute if score $players _ matches 3.. positioned 9871 22 -77 run function stage:boss/2/move/2/random_spawn
execute if score $players _ matches 3.. positioned 9885 22 -91 run function stage:boss/2/move/2/random_spawn
execute if score $players _ matches 4.. positioned 9885 22 -77 run function stage:boss/2/move/2/random_spawn
execute if score $players _ matches 4.. positioned 9871 22 -91 run function stage:boss/2/move/2/random_spawn

# score
scoreboard players set s2 BossMoves 0
