#> 
# 
# 
# 
# 

#\ +0.5 blocks
    particle minecraft:dust{color: 4513268, scale: 1.2} ~ ~0.6 ~ 0.0 0.0 0.0 0 1 force @a

# damage
    effect give @a[distance=..0.8] minecraft:wind_charged 1 7

# steps
    scoreboard players remove $steps _ 1
    execute if score $steps _ matches 1.. positioned ^ ^ ^0.5 run function stage:boss/ex3/move/10/line_x
