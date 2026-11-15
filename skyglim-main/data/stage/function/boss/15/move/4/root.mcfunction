#> stage:boss/1/move/4/root
# 
# 移動速度上昇
# 
# 

# 召喚
# 2 + (players - 1)* 2 (n <= 4)
execute store result score $players _ if entity @a[distance=..75]

execute positioned 6765 74 2 run function stage:boss/15/move/4/random_spawn
execute positioned 6765 74 -22 run function stage:boss/15/move/4/random_spawn
execute if score $players _ matches 2.. positioned 6753 74 -10 run function stage:boss/15/move/4/random_spawn
execute if score $players _ matches 2.. positioned 6777 74 -10 run function stage:boss/15/move/4/random_spawn
execute if score $players _ matches 3.. positioned 6755 74 0 run function stage:boss/15/move/4/random_spawn
execute if score $players _ matches 3.. positioned 6775 74 -20 run function stage:boss/15/move/4/random_spawn
execute if score $players _ matches 4.. positioned 6775 74 0 run function stage:boss/15/move/4/random_spawn
execute if score $players _ matches 4.. positioned 6755 74 -20 run function stage:boss/15/move/4/random_spawn

# score
scoreboard players set s15 BossMoves 0
