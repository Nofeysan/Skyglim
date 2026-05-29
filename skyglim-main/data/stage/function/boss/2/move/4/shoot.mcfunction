#> stage:boss/2/move/4/shoot
# 
# 発射する
# 
# 

# Motion
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=1] Motion set value [0.0d, 0.0d, 2.5d]
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=2] Motion set value [-2.16506d, 0.0d, 1.25d]
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=3] Motion set value [-2.16506d, 0.0d, -1.25d]
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=4] Motion set value [0.0, 0.0d, -2.5d]
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=5] Motion set value [2.16506, 0.0d, -1.25d]
data modify entity @n[type=minecraft:item, tag=gimmick.magma, tag=6] Motion set value [2.16506, 0.0d, 1.25d]

# sound
playsound minecraft:entity.wither.shoot voice @a ~ ~ ~ 1 1
