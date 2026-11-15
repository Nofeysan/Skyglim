#> stage:boss/ex5/move/3/perform
# 
# 
# 
# 

execute as @a[distance=..80] at @s run playsound minecraft:entity.wither.shoot voice @s ~ ~ ~ 0.12 1
execute as @a[distance=..80] at @s run playsound minecraft:block.glass.break voice @s ~ ~ ~ 0.1 1
execute positioned 10277 26 -93 run particle minecraft:dust{color: 12971519, scale: 2.0} ~ ~ ~ 8 2 8 1 700
