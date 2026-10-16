#> stage:boss/6/move/1/remove_aoe
# 
# 最寄りのAoEを消す
# 
# 

# kill AoE
    execute at @n[type=minecraft:armor_stand, tag=aec, distance=..1] run kill @e[distance=..0.02, type=minecraft:block_display]
    kill @n[type=minecraft:armor_stand, tag=aec, distance=..1]

# kill
    kill @s
