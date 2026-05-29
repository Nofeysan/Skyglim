#> stage:boss/1/move/4/root
# 
# 移動速度上昇
# 
# 

# 召喚
# 2 + (players - 1)* 2 (n <= 4)
execute store result score $players _ if entity @a[distance=..30]

execute positioned 9920 13 98 run function stage:boss/1/move/4/random_spawn
execute positioned 9920 13 78 run function stage:boss/1/move/4/random_spawn
execute if score $players _ matches 2.. positioned 9910 13 88 run function stage:boss/1/move/4/random_spawn
execute if score $players _ matches 2.. positioned 9930 13 88 run function stage:boss/1/move/4/random_spawn
execute if score $players _ matches 3.. positioned 9927 13 95 run function stage:boss/1/move/4/random_spawn
execute if score $players _ matches 3.. positioned 9913 13 81 run function stage:boss/1/move/4/random_spawn
execute if score $players _ matches 4.. positioned 9927 13 81 run function stage:boss/1/move/4/random_spawn
execute if score $players _ matches 4.. positioned 9913 13 95 run function stage:boss/1/move/4/random_spawn

# score
scoreboard players set s2 BossMoves 0
