#> 
# 
# 
# 
# 

#\ +0.5 blocks
    particle minecraft:dust{color: 12652105, scale: 1.2} ~ ~0.75 ~ 0.0 0.0 0.0 0 1 force @a

# damage
    effect give @a[distance=..1] minecraft:wind_charged 1 7

# steps
    scoreboard players remove $steps _ 1
    execute if score $steps _ matches 1.. positioned ^ ^ ^0.5 run function stage:boss/ex3/move/10/line_z
