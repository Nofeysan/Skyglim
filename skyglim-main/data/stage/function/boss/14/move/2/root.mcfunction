#> stage:boss/6/move/2/root
# 
# プレイヤーの真上に tp → ブロック破壊 の繰り返し
# 
# 

# effect
    execute if score s14 BossMoves matches 200..340 run effect give @s minecraft:glowing 1 0 true

# tp -> AoE + break
    #+ 1
    # summon (marker, AoE)
        execute if score s14 BossMoves matches 200 run function stage:boss/14/move/2/summon

    # tp + sound
        execute if score s14 BossMoves matches 200..239 run tp @s @n[type=minecraft:marker, tag=gimmick.break.s14]
        execute if score s14 BossMoves matches 200 as @a at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.7 1.0
        execute if score s14 BossMoves matches 220 as @a at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.7 1.5
    
    # break
        execute if score s14 BossMoves matches 240 run function stage:boss/14/move/2/break

    #+ 2
    # kill + summon (marker, AoE)
        execute if score s14 BossMoves matches 260 run function stage:boss/14/move/2/summon

    # tp + sound
        execute if score s14 BossMoves matches 260..299 run tp @s @n[type=minecraft:marker, tag=gimmick.break.s14]
        execute if score s14 BossMoves matches 260 as @a at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.7 1.0
        execute if score s14 BossMoves matches 280 as @a at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.7 1.5
    
    # break
        execute if score s14 BossMoves matches 300 run function stage:boss/14/move/2/break

    #+ 3
    # kill + summon (marker, AoE)
        execute if score s14 BossMoves matches 320 run function stage:boss/14/move/2/summon

    # tp + sound
        execute if score s14 BossMoves matches 320..359 run tp @s @n[type=minecraft:marker, tag=gimmick.break.s14]
        execute if score s14 BossMoves matches 320 as @a at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.7 1.0
        execute if score s14 BossMoves matches 340 as @a at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.7 1.5
    
    # break
        execute if score s14 BossMoves matches 360 run function stage:boss/14/move/2/break

    #+ 4
    # kill + summon (marker, AoE)
        execute if score s14 BossMoves matches 380 run function stage:boss/14/move/2/summon

    # tp + sound
        execute if score s14 BossMoves matches 380..419 run tp @s @n[type=minecraft:marker, tag=gimmick.break.s14]
        execute if score s14 BossMoves matches 380 as @a at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.7 1.0
        execute if score s14 BossMoves matches 400 as @a at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.7 1.5
    
    # break
        execute if score s14 BossMoves matches 420 run function stage:boss/14/move/2/break

    #+ 5
    # kill + summon (marker, AoE)
        execute if score s14 BossMoves matches 440 run function stage:boss/14/move/2/summon

    # tp + sound
        execute if score s14 BossMoves matches 440..479 run tp @s @n[type=minecraft:marker, tag=gimmick.break.s14]
        execute if score s14 BossMoves matches 440 as @a at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.7 1.0
        execute if score s14 BossMoves matches 460 as @a at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 0.7 1.5
    
    # break
        execute if score s14 BossMoves matches 480 run function stage:boss/14/move/2/break

# reset
    execute if score s14 BossMoves matches 500 as @a[distance=..80] at @s run tp @s ~ 83 ~
    execute if score s14 BossMoves matches 500 run tp @s 7544 83 -77
    execute if score s14 BossMoves matches 500 run kill @e[type=minecraft:marker, tag=gimmick.break.s14]
    execute if score s14 BossMoves matches 500 run clone 7523 70 -98 7565 70 -56 7523 81 -98
    execute if score s14 BossMoves matches 500.. run scoreboard players set s14 BossMoves 60
