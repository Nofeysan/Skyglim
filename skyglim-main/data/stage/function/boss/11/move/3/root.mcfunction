#> stage:boss/6/move/2/root
# 
# 反↓復→横→跳↑び↓
# 
# 

# bat 召喚
    execute if score s11 BossMoves matches 200 as @a[distance=..50] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.7 0.5
    execute if score s11 BossMoves matches 200 positioned 10438 291 -366 run function stage:boss/11/move/3/summon_bat
    execute if score s11 BossMoves matches 200 positioned 10456 291 -366 run function stage:boss/11/move/3/summon_bat

# kill
    execute if score s11 BossMoves matches 400.. run function stage:boss/11/move/3/kill

# reset
    execute if score s11 BossMoves matches 400.. run scoreboard players set s11 BossMoves 160
