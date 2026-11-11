#> stage:boss/10/move/10/line/dust
# 
# 
# 
# 

#\ +0.5 blocks
    particle minecraft:dust{color: [0.745098039215686, 0.129411764705882, 0.32156862745098], scale: 1.2} ~ ~0.75 ~ 0.0 0.0 0.0 0 1 force @a

# damage
    effect give @a[distance=..1] minecraft:wind_charged 1 7

# steps
    scoreboard players remove $steps _ 1
    execute if score $steps _ matches 1.. positioned ^ ^ ^0.5 run function stage:boss/10/move/10/line/dust_3
