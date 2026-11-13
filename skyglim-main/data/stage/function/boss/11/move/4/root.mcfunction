#> stage:boss/1/move/4/root
# 
# 移動速度上昇
# 
# 

# 召喚
# 2 + (players - 1)* 2 (n <= 4)
execute store result score $players _ if entity @a[distance=..30]

execute positioned 10145 6 -347 run function stage:boss/11/move/4/random_spawn
execute positioned 10150 6 -332 run function stage:boss/11/move/4/random_spawn
execute if score $players _ matches 2.. positioned 10155 6 -342 run function stage:boss/11/move/4/random_spawn
execute if score $players _ matches 2.. positioned 10140 6 -337 run function stage:boss/11/move/4/random_spawn
execute if score $players _ matches 3.. positioned 10150 6 -347 run function stage:boss/11/move/4/random_spawn
execute if score $players _ matches 3.. positioned 10145 6 -332 run function stage:boss/11/move/4/random_spawn
execute if score $players _ matches 4.. positioned 10155 6 -337 run function stage:boss/11/move/4/random_spawn
execute if score $players _ matches 4.. positioned 10140 6 -342 run function stage:boss/11/move/4/random_spawn

# score
scoreboard players set s11 BossMoves -20
