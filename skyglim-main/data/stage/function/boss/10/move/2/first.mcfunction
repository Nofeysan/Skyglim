#> stage:boss/10/move/2/first
# 
# moves 1/3
# 
# 

    execute if score s10 BossMoves matches 200..270 if score _ _ matches 0 as @a[distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.7 1.0
    execute if score s10 BossMoves matches 200..270 if score _ _ matches 10 as @a[distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.7 1.0

    execute if score s10 BossMoves matches 200 as @n[tag=1x1, tag=1] run function entity:aec_manager/summon/.square {r: 5, t: 80, dmg: 48, str: 56, id: 104}
    execute if score s10 BossMoves matches 200 as @n[tag=1x1, tag=16] run function entity:aec_manager/summon/.square {r: 5, t: 80, dmg: 48, str: 56, id: 104}
    execute if score s10 BossMoves matches 210 as @n[tag=1x1, tag=2] run function entity:aec_manager/summon/.square {r: 5, t: 80, dmg: 48, str: 56, id: 104}
    execute if score s10 BossMoves matches 210 as @n[tag=1x1, tag=15] run function entity:aec_manager/summon/.square {r: 5, t: 80, dmg: 48, str: 56, id: 104}
    execute if score s10 BossMoves matches 220 as @n[tag=1x1, tag=3] run function entity:aec_manager/summon/.square {r: 5, t: 80, dmg: 48, str: 56, id: 104}
    execute if score s10 BossMoves matches 220 as @n[tag=1x1, tag=14] run function entity:aec_manager/summon/.square {r: 5, t: 80, dmg: 48, str: 56, id: 104}
    execute if score s10 BossMoves matches 230 as @n[tag=1x1, tag=4] run function entity:aec_manager/summon/.square {r: 5, t: 80, dmg: 48, str: 56, id: 104}
    execute if score s10 BossMoves matches 230 as @n[tag=1x1, tag=13] run function entity:aec_manager/summon/.square {r: 5, t: 80, dmg: 48, str: 56, id: 104}
    execute if score s10 BossMoves matches 240 as @n[tag=1x1, tag=5] run function entity:aec_manager/summon/.square {r: 5, t: 80, dmg: 48, str: 56, id: 104}
    execute if score s10 BossMoves matches 240 as @n[tag=1x1, tag=12] run function entity:aec_manager/summon/.square {r: 5, t: 80, dmg: 48, str: 56, id: 104}
    execute if score s10 BossMoves matches 250 as @n[tag=1x1, tag=6] run function entity:aec_manager/summon/.square {r: 5, t: 80, dmg: 48, str: 56, id: 104}
    execute if score s10 BossMoves matches 250 as @n[tag=1x1, tag=11] run function entity:aec_manager/summon/.square {r: 5, t: 80, dmg: 48, str: 56, id: 104}
    execute if score s10 BossMoves matches 260 as @n[tag=1x1, tag=7] run function entity:aec_manager/summon/.square {r: 5, t: 80, dmg: 48, str: 56, id: 104}
    execute if score s10 BossMoves matches 260 as @n[tag=1x1, tag=10] run function entity:aec_manager/summon/.square {r: 5, t: 80, dmg: 48, str: 56, id: 104}
    execute if score s10 BossMoves matches 270 as @n[tag=1x1, tag=8] run function entity:aec_manager/summon/.square {r: 5, t: 80, dmg: 48, str: 56, id: 104}
    execute if score s10 BossMoves matches 270 as @n[tag=1x1, tag=9] run function entity:aec_manager/summon/.square {r: 5, t: 80, dmg: 48, str: 56, id: 104}
