#> stage:boss/1/move/4/root
# 
# 移動速度上昇
# 
# 

# 召喚
# 2 + (players - 1)* 2 (n <= 4)
execute store result score $players _ if entity @a[distance=..75]

execute positioned 7544 82 -66 run function stage:boss/14/move/4/random_spawn
execute positioned 7544 82 -88 run function stage:boss/14/move/4/random_spawn
execute if score $players _ matches 2.. positioned 7533 82 -77 run function stage:boss/14/move/4/random_spawn
execute if score $players _ matches 2.. positioned 7555 82 -77 run function stage:boss/14/move/4/random_spawn
execute if score $players _ matches 3.. positioned 7537 82 -84 run function stage:boss/14/move/4/random_spawn
execute if score $players _ matches 3.. positioned 7551 82 -70 run function stage:boss/14/move/4/random_spawn
execute if score $players _ matches 4.. positioned 7551 82 -84 run function stage:boss/14/move/4/random_spawn
execute if score $players _ matches 4.. positioned 7537 82 -70 run function stage:boss/14/move/4/random_spawn

# score
scoreboard players set s14 BossMoves -20
