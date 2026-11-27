#> stage:boss/exx/move/13/root
# 
# 
# 
# 

# sound
    scoreboard players operation _ _ = exx BossMoves
    scoreboard players operation _ _ %= #20 num
    execute if score _ _ matches 0 as @a[distance=..50] at @s run playsound minecraft:block.note_block.hat voice @s ~ ~ ~ 1.2 1

# AoE to AEC
    execute if score exx BossMoves matches 200 at @a[distance=..50] positioned ~ 147 ~ run function entity:aec_manager/summon/.cyl {r: 10, t: 40, dmg: 16, str: 18, id: 295}
    execute if score exx BossMoves matches 220 at @a[distance=..50] positioned ~ 147 ~ run function entity:aec_manager/summon/.cyl {r: 10, t: 40, dmg: 16, str: 18, id: 295}
    execute if score exx BossMoves matches 240 at @a[distance=..50] positioned ~ 147 ~ run function entity:aec_manager/summon/.cyl {r: 10, t: 40, dmg: 16, str: 18, id: 295}
    execute if score exx BossMoves matches 260 at @a[distance=..50] positioned ~ 147 ~ run function entity:aec_manager/summon/.cyl {r: 10, t: 40, dmg: 16, str: 18, id: 295}
    execute if score exx BossMoves matches 280 at @a[distance=..50] positioned ~ 147 ~ run function entity:aec_manager/summon/.cyl {r: 10, t: 40, dmg: 16, str: 18, id: 295}
    execute if score exx BossMoves matches 300 at @a[distance=..50] positioned ~ 147 ~ run function entity:aec_manager/summon/.cyl {r: 10, t: 40, dmg: 16, str: 18, id: 295}
    execute if score exx BossMoves matches 320 at @a[distance=..50] positioned ~ 147 ~ run function entity:aec_manager/summon/.cyl {r: 10, t: 40, dmg: 16, str: 18, id: 295}

# reset
    execute if score exx BossMoves matches 340.. run scoreboard players set exx BossMoves 80
