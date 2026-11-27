#> stage:boss/exx/move/half/root
# 
# 7カウントに合わせて 雷審判 と 上下移動 (10 tick ずらし)
# 25tick*7 = 175tick (8.75s)
# 
# エリアは広めにしようかしらね (r=8?)
# 

#+ 上下移動
# 200: 足場召喚
    execute if score exx BossMoves matches 200 run function stage:boss/exx/move/init/1/set

# 予告
    execute if score exx BossMoves matches 200 run function stage:boss/exx/move/half/select

# 上下移動
    execute if score exx BossMoves matches 462 as @a[distance=..80] run function stage:boss/exx/move/half/damage-1
    execute if score exx BossMoves matches 702 as @a[distance=..80] run function stage:boss/exx/move/half/damage-2
    execute if score exx BossMoves matches 942 as @a[distance=..80] run function stage:boss/exx/move/half/damage-3
    execute if score exx BossMoves matches 1182 as @a[distance=..80] run function stage:boss/exx/move/half/damage-4
    execute if score exx BossMoves matches 1422 as @a[distance=..80] run function stage:boss/exx/move/half/damage-5
    execute if score exx BossMoves matches 1662 as @a[distance=..80] run function stage:boss/exx/move/half/damage-6
    execute if score exx BossMoves matches 1902 as @a[distance=..80] run function stage:boss/exx/move/half/damage-7

# 足場 reset
    execute if score exx BossMoves matches 1920 run function stage:boss/exx/move/init/1/remove

#% 雷審判
# barrier
    # 倒されたこと検知
        execute as @e[predicate=stage:is_barrier_item] at @s run function stage:boss/exx/move/half/set_barrier
    
    # particle
        execute if score _ _ matches 0 as @e[tag=gimmick.barrier.set, type=minecraft:marker] at @s run function stage:boss/exx/move/half/show_barrier

# 200: tp
    execute if score exx BossMoves matches 200..600 run tp @n[tag=boss, tag=exx] 9295 147 -405

# 1
    #  AoE + barrier 素召喚, カウント
        execute if score exx BossMoves matches 240 positioned ~ 285 ~ run function entity:aec_manager/summon/.cyl {r: 37, t: 240, dmg: 16, str: 18, id: 113}
        execute if score exx BossMoves matches 240 run function stage:boss/exx/move/half/barrier
        execute if score exx BossMoves matches 260 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.5
        execute if score exx BossMoves matches 285 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.561231
        execute if score exx BossMoves matches 310 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.629961
        execute if score exx BossMoves matches 335 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.667420
        execute if score exx BossMoves matches 360 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.749154
        execute if score exx BossMoves matches 385 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.840896
        execute if score exx BossMoves matches 410 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.943874
        execute if score exx BossMoves matches 435 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 1.0

    #  極大ダメージ (tag=gimmick.barrier.set から 5m が安全地帯)
        execute if score exx BossMoves matches 460 as @a[distance=..50] at @s run playsound minecraft:item.totem.use voice @s ~ ~ ~ 0.5 1
        execute if score exx BossMoves matches 460 as @a[distance=..50] at @s positioned ~ 144 ~ if entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/exx/move/half/barrier_act
        execute if score exx BossMoves matches 460 as @a[distance=..50] at @s positioned ~ 144 ~ unless entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/exx/move/half/damage
        execute if score exx BossMoves matches 461 run kill @e[tag=gimmick.barrier.exx]
        execute if score exx BossMoves matches 462 run kill @e[tag=gimmick.barrier.set]

# 2
    #  AoE + barrier 素召喚, カウント
        execute if score exx BossMoves matches 480 positioned ~ 285 ~ run function entity:aec_manager/summon/.cyl {r: 37, t: 240, dmg: 16, str: 18, id: 113}
        execute if score exx BossMoves matches 480 run function stage:boss/exx/move/half/barrier
        execute if score exx BossMoves matches 500 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.5
        execute if score exx BossMoves matches 525 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.561231
        execute if score exx BossMoves matches 550 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.629961
        execute if score exx BossMoves matches 575 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.667420
        execute if score exx BossMoves matches 600 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.749154
        execute if score exx BossMoves matches 625 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.840896
        execute if score exx BossMoves matches 650 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.943874
        execute if score exx BossMoves matches 675 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 1.0

    #  極大ダメージ (tag=gimmick.barrier.set から 5m が安全地帯)
        execute if score exx BossMoves matches 700 as @a[distance=..50] at @s run playsound minecraft:item.totem.use voice @s ~ ~ ~ 0.5 1
        execute if score exx BossMoves matches 700 as @a[distance=..50] at @s positioned ~ 144 ~ if entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/exx/move/half/barrier_act
        execute if score exx BossMoves matches 700 as @a[distance=..50] at @s positioned ~ 144 ~ unless entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/exx/move/half/damage
        execute if score exx BossMoves matches 701 run kill @e[tag=gimmick.barrier.exx]
        execute if score exx BossMoves matches 702 run kill @e[tag=gimmick.barrier.set]

# 3
    #  AoE + barrier 素召喚, カウント
        execute if score exx BossMoves matches 720 positioned ~ 285 ~ run function entity:aec_manager/summon/.cyl {r: 37, t: 240, dmg: 16, str: 18, id: 113}
        execute if score exx BossMoves matches 720 run function stage:boss/exx/move/half/barrier
        execute if score exx BossMoves matches 740 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.5
        execute if score exx BossMoves matches 765 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.561231
        execute if score exx BossMoves matches 790 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.629961
        execute if score exx BossMoves matches 815 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.667420
        execute if score exx BossMoves matches 840 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.749154
        execute if score exx BossMoves matches 865 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.840896
        execute if score exx BossMoves matches 890 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.943874
        execute if score exx BossMoves matches 915 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 1.0

    #  極大ダメージ (tag=gimmick.barrier.set から 5m が安全地帯)
        execute if score exx BossMoves matches 940 as @a[distance=..50] at @s run playsound minecraft:item.totem.use voice @s ~ ~ ~ 0.5 1
        execute if score exx BossMoves matches 940 as @a[distance=..50] at @s positioned ~ 144 ~ if entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/exx/move/half/barrier_act
        execute if score exx BossMoves matches 940 as @a[distance=..50] at @s positioned ~ 144 ~ unless entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/exx/move/half/damage
        execute if score exx BossMoves matches 941 run kill @e[tag=gimmick.barrier.exx]
        execute if score exx BossMoves matches 942 run kill @e[tag=gimmick.barrier.set]

# 4
    #  AoE + barrier 素召喚, カウント
        execute if score exx BossMoves matches 960 positioned ~ 285 ~ run function entity:aec_manager/summon/.cyl {r: 37, t: 240, dmg: 16, str: 18, id: 113}
        execute if score exx BossMoves matches 960 run function stage:boss/exx/move/half/barrier
        execute if score exx BossMoves matches 980 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.5
        execute if score exx BossMoves matches 1005 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.561231
        execute if score exx BossMoves matches 1030 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.629961
        execute if score exx BossMoves matches 1055 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.667420
        execute if score exx BossMoves matches 1080 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.749154
        execute if score exx BossMoves matches 1105 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.840896
        execute if score exx BossMoves matches 1130 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.943874
        execute if score exx BossMoves matches 1155 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 1.0

    #  極大ダメージ (tag=gimmick.barrier.set から 5m が安全地帯)
        execute if score exx BossMoves matches 1180 as @a[distance=..50] at @s run playsound minecraft:item.totem.use voice @s ~ ~ ~ 0.5 1
        execute if score exx BossMoves matches 1180 as @a[distance=..50] at @s positioned ~ 144 ~ if entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/exx/move/half/barrier_act
        execute if score exx BossMoves matches 1180 as @a[distance=..50] at @s positioned ~ 144 ~ unless entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/exx/move/half/damage
        execute if score exx BossMoves matches 1181 run kill @e[tag=gimmick.barrier.exx]
        execute if score exx BossMoves matches 1182 run kill @e[tag=gimmick.barrier.set]

# 5
    #  AoE + barrier 素召喚, カウント
        execute if score exx BossMoves matches 1200 positioned ~ 285 ~ run function entity:aec_manager/summon/.cyl {r: 37, t: 240, dmg: 16, str: 18, id: 113}
        execute if score exx BossMoves matches 1200 run function stage:boss/exx/move/half/barrier
        execute if score exx BossMoves matches 1220 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.5
        execute if score exx BossMoves matches 1245 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.561231
        execute if score exx BossMoves matches 1270 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.629961
        execute if score exx BossMoves matches 1295 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.667420
        execute if score exx BossMoves matches 1320 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.749154
        execute if score exx BossMoves matches 1345 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.840896
        execute if score exx BossMoves matches 1370 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.943874
        execute if score exx BossMoves matches 1395 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 1.0

    #  極大ダメージ (tag=gimmick.barrier.set から 5m が安全地帯)
        execute if score exx BossMoves matches 1420 as @a[distance=..50] at @s run playsound minecraft:item.totem.use voice @s ~ ~ ~ 0.5 1
        execute if score exx BossMoves matches 1420 as @a[distance=..50] at @s positioned ~ 144 ~ if entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/exx/move/half/barrier_act
        execute if score exx BossMoves matches 1420 as @a[distance=..50] at @s positioned ~ 144 ~ unless entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/exx/move/half/damage
        execute if score exx BossMoves matches 1421 run kill @e[tag=gimmick.barrier.exx]
        execute if score exx BossMoves matches 1422 run kill @e[tag=gimmick.barrier.set]

# 6
    #  AoE + barrier 素召喚, カウント
        execute if score exx BossMoves matches 1440 positioned ~ 285 ~ run function entity:aec_manager/summon/.cyl {r: 37, t: 240, dmg: 16, str: 18, id: 113}
        execute if score exx BossMoves matches 1440 run function stage:boss/exx/move/half/barrier
        execute if score exx BossMoves matches 1460 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.5
        execute if score exx BossMoves matches 1485 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.561231
        execute if score exx BossMoves matches 1510 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.629961
        execute if score exx BossMoves matches 1535 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.667420
        execute if score exx BossMoves matches 1560 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.749154
        execute if score exx BossMoves matches 1585 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.840896
        execute if score exx BossMoves matches 1610 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.943874
        execute if score exx BossMoves matches 1635 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 1.0

    #  極大ダメージ (tag=gimmick.barrier.set から 5m が安全地帯)
        execute if score exx BossMoves matches 1660 as @a[distance=..50] at @s run playsound minecraft:item.totem.use voice @s ~ ~ ~ 0.5 1
        execute if score exx BossMoves matches 1660 as @a[distance=..50] at @s positioned ~ 144 ~ if entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/exx/move/half/barrier_act
        execute if score exx BossMoves matches 1660 as @a[distance=..50] at @s positioned ~ 144 ~ unless entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/exx/move/half/damage
        execute if score exx BossMoves matches 1661 run kill @e[tag=gimmick.barrier.exx]
        execute if score exx BossMoves matches 1662 run kill @e[tag=gimmick.barrier.set]

# 7
    #  AoE + barrier 素召喚, カウント
        execute if score exx BossMoves matches 1680 positioned ~ 285 ~ run function entity:aec_manager/summon/.cyl {r: 37, t: 240, dmg: 16, str: 18, id: 113}
        execute if score exx BossMoves matches 1680 run function stage:boss/exx/move/half/barrier
        execute if score exx BossMoves matches 1700 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.5
        execute if score exx BossMoves matches 1725 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.561231
        execute if score exx BossMoves matches 1750 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.629961
        execute if score exx BossMoves matches 1775 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.667420
        execute if score exx BossMoves matches 1800 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.749154
        execute if score exx BossMoves matches 1825 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.840896
        execute if score exx BossMoves matches 1850 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 0.943874
        execute if score exx BossMoves matches 1875 as @a[distance=..50] at @s run playsound minecraft:block.note_block.chime voice @s ~ ~ ~ 0.6 1.0

    #  極大ダメージ (tag=gimmick.barrier.set から 5m が安全地帯)
        execute if score exx BossMoves matches 1900 as @a[distance=..50] at @s run playsound minecraft:item.totem.use voice @s ~ ~ ~ 0.5 1
        execute if score exx BossMoves matches 1900 as @a[distance=..50] at @s positioned ~ 144 ~ if entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/exx/move/half/barrier_act
        execute if score exx BossMoves matches 1900 as @a[distance=..50] at @s positioned ~ 144 ~ unless entity @e[distance=..5, tag=gimmick.barrier.set] run function stage:boss/exx/move/half/damage
        execute if score exx BossMoves matches 1901 run kill @e[tag=gimmick.barrier.exx]
        execute if score exx BossMoves matches 1902 run kill @e[tag=gimmick.barrier.set]

# reset
    execute if score exx BossMoves matches 1940.. run scoreboard players set exx BossMoves 0
