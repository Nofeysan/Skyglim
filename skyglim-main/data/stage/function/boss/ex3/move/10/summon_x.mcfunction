#> stage:boss/10/move/3/summon_line
# 
# 飛ぶ用の線を召喚
# 
# 

# summon
    summon minecraft:armor_stand 9923 101 -583 {Tags: ['gimmick', 'gimmick.ex3.line.x'], Rotation: [0, 0], NoGravity: true}

# sound
    execute as @a[distance=..100] at @s run playsound minecraft:entity.item.pickup voice @s ~ ~ ~ 0.6 1.0
