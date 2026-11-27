#> stage:boss/6/move/2/root
# 
# 反↓復→横→跳↑び↓
# 
# 

# bat 召喚
    execute as @a[distance=..50] at @s run playsound minecraft:entity.shulker_bullet.hurt voice @s ~ ~ ~ 0.7 1
    execute as @a[distance=..50] at @s run playsound minecraft:entity.snow_golem.death voice @s ~ ~ ~ 0.7 1

    execute positioned 9290 154 -405 run function stage:boss/exx/move/3/summon_bat_normal
    execute positioned 9300 154 -405 run function stage:boss/exx/move/3/summon_bat_normal

# reset
    scoreboard players set exx BossMoves 100
