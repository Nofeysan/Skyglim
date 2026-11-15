#> stage:boss/1/move/4/root
# 
# 移動速度上昇
# 
# 

# 召喚
# 2 + (players - 1)* 2 (n <= 4)
execute store result score $players _ if entity @a[distance=..75]

execute positioned 9959 101 -567 run function stage:boss/ex3/move/4/random_spawn
execute positioned 9957 101 -536 run function stage:boss/ex3/move/4/random_spawn
execute if score $players _ matches 2.. positioned 9969 101 -564 run function stage:boss/ex3/move/4/random_spawn
execute if score $players _ matches 2.. positioned 9947 101 -540 run function stage:boss/ex3/move/4/random_spawn
execute if score $players _ matches 3.. positioned 9970 101 -539 run function stage:boss/ex3/move/4/random_spawn
execute if score $players _ matches 3.. positioned 9947 101 -540 run function stage:boss/ex3/move/4/random_spawn
execute if score $players _ matches 4.. positioned 9943 101 -552 run function stage:boss/ex3/move/4/random_spawn
execute if score $players _ matches 4.. positioned 9948 101 -562 run function stage:boss/ex3/move/4/random_spawn

# score
scoreboard players set ex3 BossMoves 0
