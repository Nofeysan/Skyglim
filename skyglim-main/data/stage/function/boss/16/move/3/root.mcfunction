#> stage:boss/6/move/2/root
# 
# 反↓復→横→跳↑び↓
# 
# 

# bat 召喚
    execute as @a[distance=..50] at @s run playsound minecraft:entity.shulker_bullet.hurt voice @s ~ ~ ~ 0.7 1
    execute as @a[distance=..50] at @s run playsound minecraft:entity.snow_golem.death voice @s ~ ~ ~ 0.7 1

    execute unless score $s16.boss.half _ matches 1 positioned 9514 149 -497 run function stage:boss/16/move/3/summon_bat_normal
    execute unless score $s16.boss.half _ matches 1 positioned 9514 149 -511 run function stage:boss/16/move/3/summon_bat_normal

    execute if score $s16.boss.half _ matches 1 positioned 9514 149 -497 run function stage:boss/16/move/3/summon_bat_half
    execute if score $s16.boss.half _ matches 1 positioned 9514 149 -511 run function stage:boss/16/move/3/summon_bat_half

# reset
    scoreboard players set s16 BossMoves 100
