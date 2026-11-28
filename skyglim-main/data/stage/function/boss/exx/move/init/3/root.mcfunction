#> stage:boss/exx/move/init/3/root
# 
# 
# 
# 

# bat 召喚 → 終了時に kill
    execute if score exx BossMoves matches 960 as @a[distance=..50] at @s run playsound minecraft:entity.shulker_bullet.hurt voice @s ~ ~ ~ 0.7 1
    execute if score exx BossMoves matches 960 as @a[distance=..50] at @s run playsound minecraft:entity.snow_golem.death voice @s ~ ~ ~ 0.7 1
    execute if score exx BossMoves matches 960 positioned 9290 154 -405 run function stage:boss/exx/move/init/3/summon_bat_normal
    execute if score exx BossMoves matches 960 positioned 9300 154 -405 run function stage:boss/exx/move/init/3/summon_bat_normal
    execute if score exx BossMoves matches 1620 run kill @e[type=minecraft:bat, tag=gimmick.bat.exx]

scoreboard players operation _ _ = exx BossMoves
scoreboard players operation _ _ %= #10 num

# barrier
    # 倒されたこと検知
        execute as @e[predicate=stage:is_barrier_item] at @s run function stage:boss/exx/move/init/3/set_barrier
    
    # particle
        execute if score _ _ matches 0 as @e[tag=gimmick.barrier.set, type=minecraft:marker] at @s run function stage:boss/exx/move/init/3/show_barrier

# 1周目
    # 980: AoE + barrier 素召喚, カウント
        execute if score exx BossMoves matches 980 positioned ~ 147 ~ run function entity:aec_manager/summon/.cyl {r: 37, t: 180, dmg: 16, str: 18, id: 113}
        execute if score exx BossMoves matches 980 run function stage:boss/exx/move/init/3/barrier
        execute if score exx BossMoves matches 1000 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.5
        execute if score exx BossMoves matches 1020 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.561231
        execute if score exx BossMoves matches 1040 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.629961
        execute if score exx BossMoves matches 1060 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.667420
        execute if score exx BossMoves matches 1080 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.749154
        execute if score exx BossMoves matches 1100 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.840896
        execute if score exx BossMoves matches 1120 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.943874
        execute if score exx BossMoves matches 1140 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 1.0

    # 1180: 極大ダメージ (tag=gimmick.barrier.set から 5m が安全地帯)
        execute if score exx BossMoves matches 1160 as @a[distance=..50] at @s run playsound minecraft:item.totem.use voice @s ~ ~ ~ 0.5 1
        execute if score exx BossMoves matches 1160 as @a[distance=..50] at @s if entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/exx/move/init/3/barrier_act
        execute if score exx BossMoves matches 1160 as @a[distance=..50] at @s unless entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/exx/move/init/3/damage
        execute if score exx BossMoves matches 1161 run kill @e[tag=gimmick.barrier.exx]
        execute if score exx BossMoves matches 1162 run kill @e[tag=gimmick.barrier.set]

# 2周目
    # 1200: AoE + barrier 素召喚, カウント
        execute if score exx BossMoves matches 1180 positioned ~ 147 ~ run function entity:aec_manager/summon/.cyl {r: 37, t: 180, dmg: 16, str: 18, id: 113}
        execute if score exx BossMoves matches 1180 run function stage:boss/exx/move/init/3/barrier
        execute if score exx BossMoves matches 1200 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.5
        execute if score exx BossMoves matches 1220 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.561231
        execute if score exx BossMoves matches 1240 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.629961
        execute if score exx BossMoves matches 1260 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.667420
        execute if score exx BossMoves matches 1280 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.749154
        execute if score exx BossMoves matches 1300 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.840896
        execute if score exx BossMoves matches 1320 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.943874
        execute if score exx BossMoves matches 1340 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 1.0

    # 1400: 極大ダメージ (tag=gimmick.barrier.set から 5m が安全地帯)
        execute if score exx BossMoves matches 1360 as @a[distance=..50] at @s run playsound minecraft:item.totem.use voice @s ~ ~ ~ 0.5 1
        execute if score exx BossMoves matches 1360 as @a[distance=..50] at @s if entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/exx/move/init/3/barrier_act
        execute if score exx BossMoves matches 1360 as @a[distance=..50] at @s unless entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/exx/move/init/3/damage
        execute if score exx BossMoves matches 1361 run kill @e[tag=gimmick.barrier.exx]
        execute if score exx BossMoves matches 1362 run kill @e[tag=gimmick.barrier.set]

# 3周目
    # 1420: AoE + barrier 素召喚, カウント
        execute if score exx BossMoves matches 1380 positioned ~ 147 ~ run function entity:aec_manager/summon/.cyl {r: 37, t: 180, dmg: 16, str: 18, id: 113}
        execute if score exx BossMoves matches 1380 run function stage:boss/exx/move/init/3/barrier
        execute if score exx BossMoves matches 1400 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.5
        execute if score exx BossMoves matches 1420 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.561231
        execute if score exx BossMoves matches 1440 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.629961
        execute if score exx BossMoves matches 1460 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.667420
        execute if score exx BossMoves matches 1480 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.749154
        execute if score exx BossMoves matches 1500 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.840896
        execute if score exx BossMoves matches 1520 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.943874
        execute if score exx BossMoves matches 1540 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 1.0

    # 1620: 極大ダメージ (tag=gimmick.barrier.set から 5m が安全地帯)
        execute if score exx BossMoves matches 1560 as @a[distance=..50] at @s run playsound minecraft:item.totem.use voice @s ~ ~ ~ 0.5 1
        execute if score exx BossMoves matches 1560 as @a[distance=..50] at @s if entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/exx/move/init/3/barrier_act
        execute if score exx BossMoves matches 1560 as @a[distance=..50] at @s unless entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/exx/move/init/3/damage
        execute if score exx BossMoves matches 1561 run kill @e[tag=gimmick.barrier.exx]
        execute if score exx BossMoves matches 1562 run kill @e[tag=gimmick.barrier.set]
