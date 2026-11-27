#> stage:boss/2/move/4/shoot
# 
# 発射する
# 
# 

# Motion
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=21] Motion set value [0.0d, 0.0d, 2.5d]
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=22] Motion set value [-2.16506d, 0.0d, 1.25d]
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=23] Motion set value [-2.16506d, 0.0d, -1.25d]
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=24] Motion set value [0.0, 0.0d, -2.5d]
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=25] Motion set value [2.16506, 0.0d, -1.25d]
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=26] Motion set value [2.16506, 0.0d, 1.25d]

# sound
execute as @a[distance=..50] at @s run playsound minecraft:entity.wither.shoot voice @s ~ ~ ~ 1 1
