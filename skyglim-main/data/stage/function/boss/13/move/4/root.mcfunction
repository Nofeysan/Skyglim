#> stage:boss/1/move/4/root
# 
# 移動速度上昇
# 
# 

# 召喚
# 2 + (players - 1)* 2 (n <= 4)
execute store result score $players _ if entity @a[distance=..75]

execute positioned 9062 17 -154 run function stage:boss/13/move/4/random_spawn
execute positioned 9062 17 -178 run function stage:boss/13/move/4/random_spawn
execute if score $players _ matches 2.. positioned 9074 17 -166 run function stage:boss/13/move/4/random_spawn
execute if score $players _ matches 2.. positioned 9050 17 -166 run function stage:boss/13/move/4/random_spawn
execute if score $players _ matches 3.. positioned 9069 12.5 -159 run function stage:boss/13/move/4/random_spawn
execute if score $players _ matches 3.. positioned 9055 12.5 -173 run function stage:boss/13/move/4/random_spawn
execute if score $players _ matches 4.. positioned 9069 12.5 -173 run function stage:boss/13/move/4/random_spawn
execute if score $players _ matches 4.. positioned 9055 12.5 -159 run function stage:boss/13/move/4/random_spawn

# score
scoreboard players set s13 BossMoves 0
