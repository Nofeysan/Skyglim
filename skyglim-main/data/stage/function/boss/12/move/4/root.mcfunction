#> stage:boss/1/move/4/root
# 
# 移動速度上昇
# 
# 

# 召喚
# 2 + (players - 1)* 2 (n <= 4)
execute store result score $players _ if entity @a[distance=..75]

execute positioned 11043 229 -81 run function stage:boss/12/move/4/random_spawn
execute positioned 11074 229 -82 run function stage:boss/12/move/4/random_spawn
execute if score $players _ matches 2.. positioned 11059 229 -91 run function stage:boss/12/move/4/random_spawn
execute if score $players _ matches 2.. positioned 11059 229 -72 run function stage:boss/12/move/4/random_spawn
execute if score $players _ matches 3.. positioned 11048 229 -89 run function stage:boss/12/move/4/random_spawn
execute if score $players _ matches 3.. positioned 11071 229 -74 run function stage:boss/12/move/4/random_spawn
execute if score $players _ matches 4.. positioned 11048 229 -74 run function stage:boss/12/move/4/random_spawn
execute if score $players _ matches 4.. positioned 11070 229 -89 run function stage:boss/12/move/4/random_spawn

# score
scoreboard players set s12 BossMoves -20
