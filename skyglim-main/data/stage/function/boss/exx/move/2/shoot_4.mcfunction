#> stage:boss/2/move/4/shoot
# 
# 発射する
# 
# 

# Motion
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=31] Motion set value [-1.25d, 0.0d, 2.16506d]
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=32] Motion set value [-2.5, 0.0d, 0.0d]
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=33] Motion set value [-1.25d, 0.0d, -2.16506d]
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=34] Motion set value [1.25d, 0.0d, -2.16506d]
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=35] Motion set value [2.5d, 0.0d, 0.0d]
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=36] Motion set value [1.25d, 0.0d, 2.16506d]

# sound
execute as @a[distance=..50] at @s run playsound minecraft:entity.wither.shoot voice @s ~ ~ ~ 1 1
