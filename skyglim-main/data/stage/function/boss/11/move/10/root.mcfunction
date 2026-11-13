#> stage:boss/6/move/3/root
# 
# 避けタイム
# 
# 

# 8カウント後90%くらいのダメージ

scoreboard players operation _ _ = s11 BossMoves
scoreboard players operation _ _ %= #10 num

# barrier
    # 倒されたこと検知
        execute as @e[predicate=stage:is_barrier_item] run function stage:boss/11/move/10/set_barrier
    
    # particle
        execute if score _ _ matches 0 as @e[tag=gimmick.barrier.set, type=minecraft:marker] at @s run function stage:boss/11/move/10/show_barrier

# 200: tp
    execute if score s11 BossMoves matches 200..600 run tp @n[tag=boss, tag=s11] 10148.0 11 -339.0

# 1周目
    # 220: AoE + barrier 素召喚, カウント
        execute if score s11 BossMoves matches 220 run function entity:aec_manager/summon/.cyl {r: 10, t: 40, dmg: 16, str: 18, id: 113}
        execute if score s11 BossMoves matches 220 run function stage:boss/11/move/10/barrier
        execute if score s11 BossMoves matches 240 as @a[distance=..30] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.5
        execute if score s11 BossMoves matches 260 as @a[distance=..30] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.561231
        execute if score s11 BossMoves matches 280 as @a[distance=..30] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.629961
        execute if score s11 BossMoves matches 300 as @a[distance=..30] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.667420
        execute if score s11 BossMoves matches 320 as @a[distance=..30] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.749154
        execute if score s11 BossMoves matches 340 as @a[distance=..30] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.840896
        execute if score s11 BossMoves matches 360 as @a[distance=..30] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.943874
        execute if score s11 BossMoves matches 380 as @a[distance=..30] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 1.0

    # 400: 極大ダメージ (tag=gimmick.barrier.set から 5m が安全地帯)
        execute if score s11 BossMoves matches 400 as @a[distance=..30] at @s if entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/11/move/10/barrier_act
        execute if score s11 BossMoves matches 400 as @a[distance=..30] at @s unless entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/11/move/10/damage
        execute if score s11 BossMoves matches 400 run kill @e[tag=gimmick.barrier.set]

# 2周目
    # 440: AoE + barrier 素召喚, カウント
        execute if score s11 BossMoves matches 440 run function entity:aec_manager/summon/.cyl {r: 10, t: 40, dmg: 16, str: 18, id: 113}
        execute if score s11 BossMoves matches 460 as @a[distance=..30] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.5
        execute if score s11 BossMoves matches 480 as @a[distance=..30] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.561231
        execute if score s11 BossMoves matches 500 as @a[distance=..30] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.629961
        execute if score s11 BossMoves matches 520 as @a[distance=..30] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.667420
        execute if score s11 BossMoves matches 540 as @a[distance=..30] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.749154
        execute if score s11 BossMoves matches 560 as @a[distance=..30] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.840896
        execute if score s11 BossMoves matches 580 as @a[distance=..30] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.943874
        execute if score s11 BossMoves matches 600 as @a[distance=..30] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 1.0

    # 620: 極大ダメージ (tag=gimmick.barrier.set から 5m が安全地帯)
        execute if score s11 BossMoves matches 620 as @a[distance=..30] at @s if entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/11/move/10/barrier_act
        execute if score s11 BossMoves matches 620 as @a[distance=..30] at @s unless entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/11/move/10/damage

# reset
    execute if score s11 BossMoves matches 640.. run scoreboard players set s11 BossMoves 80
