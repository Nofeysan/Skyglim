#> stage:boss/10/move/3/summon_line
# 
# 飛ぶ用の線を召喚
# 
# 

# random
    execute store result score _ _ run random value 0..2

# summon
    execute if score _ _ matches 0 run summon minecraft:armor_stand 10134 5.5 -350 {Tags: ['gimmick.s10', 's10.line', 'speed_1'], Rotation: [-90, 0], NoGravity: true}
    execute if score _ _ matches 1 run summon minecraft:armor_stand 10134 5.5 -350 {Tags: ['gimmick.s10', 's10.line', 'speed_2'], Rotation: [-90, 0], NoGravity: true}
    execute if score _ _ matches 2 run summon minecraft:armor_stand 10134 5.5 -350 {Tags: ['gimmick.s10', 's10.line', 'speed_3'], Rotation: [-90, 0], NoGravity: true}

# sound
    execute as @a[distance=..40] at @s run playsound minecraft:entity.item.pickup voice @s ~ ~ ~ 0.6 1.0
