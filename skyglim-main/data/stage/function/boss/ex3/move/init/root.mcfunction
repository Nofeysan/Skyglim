#> stage:boss/ex3/move/init/root
# 
# 蝙蝠召喚、ただしずっといる
# 
# 

# bat 召喚
    execute as @a[distance=..100] at @s run playsound minecraft:entity.shulker_bullet.hurt voice @s ~ ~ ~ 0.7 1
    execute as @a[distance=..100] at @s run playsound minecraft:entity.snow_golem.death voice @s ~ ~ ~ 0.7 1

    execute positioned 9971 107 -549 run function stage:boss/ex3/move/init/summon_bat_normal
    execute positioned 9946 107 -549 run function stage:boss/ex3/move/init/summon_bat_normal

# reset
    scoreboard players set ex3 BossMoves 100
    scoreboard players set $ex3.init _ 1
