#> stage:boss/1/move/4/root
# 
# 移動速度上昇
# 
# 

# 召喚
# 2 + (players - 1)* 2 (n <= 4)
execute store result score $players _ if entity @a[distance=..30]

execute positioned 9890 -21 -146 run function stage:boss/4/move/4/random_spawn
execute positioned 9874 -27 -130 run function stage:boss/4/move/4/random_spawn
execute if score $players _ matches 2.. positioned 9874 -21 -130 run function stage:boss/4/move/4/random_spawn
execute if score $players _ matches 2.. positioned 9890 -27 -146 run function stage:boss/4/move/4/random_spawn
execute if score $players _ matches 3.. positioned 9874 -21 -146 run function stage:boss/4/move/4/random_spawn
execute if score $players _ matches 3.. positioned 9890 -27 -130 run function stage:boss/4/move/4/random_spawn
execute if score $players _ matches 4.. positioned 9890 -21 -130 run function stage:boss/4/move/4/random_spawn
execute if score $players _ matches 4.. positioned 9874 -27 -146 run function stage:boss/4/move/4/random_spawn

# score
scoreboard players set s4 BossMoves 0
