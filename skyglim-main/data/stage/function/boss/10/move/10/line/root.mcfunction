#> stage:boss/10/move/10/line/root
# 
# 
# 
# 

# steps(block*2)
    scoreboard players set $steps _ 50

# dust
    execute if entity @s[tag=speed_1] run function stage:boss/10/move/10/line/dust_1
    execute if entity @s[tag=speed_2] run function stage:boss/10/move/10/line/dust_2
    execute if entity @s[tag=speed_3] run function stage:boss/10/move/10/line/dust_3
