#> stage:boss/11/move/1/root
# 
# 6方向にアイテム飛ばすやつ
# as boss at @s
# 

# tick
    scoreboard players operation _ _ = s12 BossMoves
    scoreboard players operation _ _ %= #10 num

# AoE
    execute if score s12 BossMoves matches 200.. if score _ _ matches 0 run playsound minecraft:entity.experience_orb.pickup voice @a ~ ~ ~ 0.5 2
    execute if score s12 BossMoves matches 200 at @a[distance=..30] positioned ~ ~ ~ run function entity:aec_manager/summon/.square {r: 10, t: 40, dmg: 48, str: 37, id: 121}
    execute if score s12 BossMoves matches 210 at @a[distance=..30] positioned ~ ~ ~ run function entity:aec_manager/summon/.square {r: 10, t: 40, dmg: 48, str: 37, id: 121}
    execute if score s12 BossMoves matches 220 at @a[distance=..30] positioned ~ ~ ~ run function entity:aec_manager/summon/.square {r: 10, t: 40, dmg: 48, str: 37, id: 121}
    execute if score s12 BossMoves matches 230 at @a[distance=..30] positioned ~ ~ ~ run function entity:aec_manager/summon/.square {r: 10, t: 40, dmg: 48, str: 37, id: 121}
    execute if score s12 BossMoves matches 240 at @a[distance=..30] positioned ~ ~ ~ run function entity:aec_manager/summon/.square {r: 10, t: 40, dmg: 48, str: 37, id: 121}
    execute if score s12 BossMoves matches 250 at @a[distance=..30] positioned ~ ~ ~ run function entity:aec_manager/summon/.square {r: 10, t: 40, dmg: 48, str: 37, id: 121}
    execute if score s12 BossMoves matches 260 at @a[distance=..30] positioned ~ ~ ~ run function entity:aec_manager/summon/.square {r: 10, t: 40, dmg: 48, str: 37, id: 121}
    execute if score s12 BossMoves matches 270 at @a[distance=..30] positioned ~ ~ ~ run function entity:aec_manager/summon/.square {r: 10, t: 40, dmg: 48, str: 37, id: 121}
    execute if score s12 BossMoves matches 280 at @a[distance=..30] positioned ~ ~ ~ run function entity:aec_manager/summon/.square {r: 10, t: 40, dmg: 48, str: 37, id: 121}
    execute if score s12 BossMoves matches 290 at @a[distance=..30] positioned ~ ~ ~ run function entity:aec_manager/summon/.square {r: 10, t: 40, dmg: 48, str: 37, id: 121}

# reset
    execute if score s12 BossMoves matches 320.. run scoreboard players set s12 BossMoves 60
