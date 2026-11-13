#> stage:boss/2/move/4/shoot
# 
# 発射する
# 
# 

# Motion
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=11] Motion set value [-1.25d, 0.0d, 2.16506d]
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=12] Motion set value [-2.5, 0.0d, 0.0d]
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=13] Motion set value [-1.25d, 0.0d, -2.16506d]
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=14] Motion set value [1.25d, 0.0d, -2.16506d]
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=15] Motion set value [2.5d, 0.0d, 0.0d]
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=16] Motion set value [1.25d, 0.0d, 2.16506d]

# sound
playsound minecraft:entity.wither.shoot voice @a ~ ~ ~ 1 1
