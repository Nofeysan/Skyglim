#> stage:boss/exx/move/init/1/root
# 
# 上下移動する
# 
# 

# 200: 足場召喚
    execute if score exx BossMoves matches 200 run function stage:boss/exx/move/init/1/set

# 予告
    execute if score exx BossMoves matches 200 run function stage:boss/exx/move/init/1/select

# 1
    execute if score exx BossMoves matches 260 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
    execute if score exx BossMoves matches 280 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
    execute if score exx BossMoves matches 300 as @a[distance=..80] run function stage:boss/exx/move/init/1/damage-1

# 2
    execute if score exx BossMoves matches 320 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
    execute if score exx BossMoves matches 340 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
    execute if score exx BossMoves matches 360 as @a[distance=..80] run function stage:boss/exx/move/init/1/damage-2

# 3
    execute if score exx BossMoves matches 380 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
    execute if score exx BossMoves matches 400 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
    execute if score exx BossMoves matches 420 as @a[distance=..80] run function stage:boss/exx/move/init/1/damage-3

# 4
    execute if score exx BossMoves matches 440 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
    execute if score exx BossMoves matches 460 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
    execute if score exx BossMoves matches 480 as @a[distance=..80] run function stage:boss/exx/move/init/1/damage-4

# 5
    execute if score exx BossMoves matches 500 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
    execute if score exx BossMoves matches 520 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
    execute if score exx BossMoves matches 540 as @a[distance=..80] run function stage:boss/exx/move/init/1/damage-5

# 6
    execute if score exx BossMoves matches 560 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
    execute if score exx BossMoves matches 580 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
    execute if score exx BossMoves matches 600 as @a[distance=..80] run function stage:boss/exx/move/init/1/damage-6

# 7
    execute if score exx BossMoves matches 620 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
    execute if score exx BossMoves matches 640 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
    execute if score exx BossMoves matches 660 as @a[distance=..80] run function stage:boss/exx/move/init/1/damage-7

# AoE to AEC
    execute if score exx BossMoves matches 260 run function entity:aec_manager/summon/.cyl {r: 7, t: 60, dmg: 16, str: 18, id: 290}
    execute if score exx BossMoves matches 320 run function entity:aec_manager/summon/.cyl {r: 7, t: 60, dmg: 16, str: 18, id: 290}
    execute if score exx BossMoves matches 380 run function entity:aec_manager/summon/.cyl {r: 7, t: 60, dmg: 16, str: 18, id: 290}
    execute if score exx BossMoves matches 440 run function entity:aec_manager/summon/.cyl {r: 7, t: 60, dmg: 16, str: 18, id: 290}
    execute if score exx BossMoves matches 500 run function entity:aec_manager/summon/.cyl {r: 7, t: 60, dmg: 16, str: 18, id: 290}
    execute if score exx BossMoves matches 560 run function entity:aec_manager/summon/.cyl {r: 7, t: 60, dmg: 16, str: 18, id: 290}
    execute if score exx BossMoves matches 620 run function entity:aec_manager/summon/.cyl {r: 7, t: 60, dmg: 16, str: 18, id: 290}

# 足場 reset
    execute if score exx BossMoves matches 680 run function stage:boss/exx/move/init/1/remove
