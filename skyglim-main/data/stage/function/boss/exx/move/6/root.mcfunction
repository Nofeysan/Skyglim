#> stage:boss/6/move/2/root
# 
# 反↓復→横→跳↑び↓
# 
# 

# tp
    tp @s @a[sort= furthest, limit= 1]

    playsound minecraft:entity.player.teleport voice @a ~ ~ ~ 0.7 1
    particle minecraft:dragon_breath ~ ~ ~ 0.7 1.4 0.7 0.1 180 force @a
    effect give @a[distance=..3] minecraft:blindness 1 0

# reset
    scoreboard players set exx BossMoves 140
