#> stage:boss/6/move/2/root
# 
# 反↓復→横→跳↑び↓
# 
# 

# time
    scoreboard players operation _ _ = ex2 BossMoves
    scoreboard players operation _ _ %= #20 num
    execute if score _ _ matches 20 if score ex2 BossMoves matches 200..320 as @a[distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2

# AoE to AEC
    execute if score ex2 BossMoves matches 200 at @a[distance=..30] positioned ~ 35 ~ run function entity:aec_manager/summon/.cyl {r: 8, t: 60, dmg: 83, str: 66, id: 224}
    execute if score ex2 BossMoves matches 220 at @a[distance=..30] positioned ~ 35 ~ run function entity:aec_manager/summon/.cyl {r: 8, t: 60, dmg: 83, str: 66, id: 224}
    execute if score ex2 BossMoves matches 240 at @a[distance=..30] positioned ~ 35 ~ run function entity:aec_manager/summon/.cyl {r: 8, t: 60, dmg: 83, str: 66, id: 224}
    execute if score ex2 BossMoves matches 260 at @a[distance=..30] positioned ~ 35 ~ run function entity:aec_manager/summon/.cyl {r: 8, t: 60, dmg: 83, str: 66, id: 224}
    execute if score ex2 BossMoves matches 280 at @a[distance=..30] positioned ~ 35 ~ run function entity:aec_manager/summon/.cyl {r: 8, t: 60, dmg: 83, str: 66, id: 224}
    execute if score ex2 BossMoves matches 300 at @a[distance=..30] positioned ~ 35 ~ run function entity:aec_manager/summon/.cyl {r: 8, t: 60, dmg: 83, str: 66, id: 224}
    execute if score ex2 BossMoves matches 320 at @a[distance=..30] positioned ~ 35 ~ run function entity:aec_manager/summon/.cyl {r: 8, t: 60, dmg: 83, str: 66, id: 224}

# reset
    execute if score ex2 BossMoves matches 360.. run scoreboard players set ex2 BossMoves 100
