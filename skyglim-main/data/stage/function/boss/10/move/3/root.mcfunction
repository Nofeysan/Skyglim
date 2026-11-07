#> stage:boss/6/move/2/root
# 
# 反↓復→横→跳↑び↓
# 
# 

# 事前予告
    execute if score s10 BossMoves matches 200 if score _ _ matches 0 as @a[distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.7 0.5
    execute if score s10 BossMoves matches 210 if score _ _ matches 0 as @a[distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.7 1.0
    execute if score s10 BossMoves matches 220 if score _ _ matches 0 as @a[distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.7 2.0

# 2秒ごとにランダム召喚
    execute if score s10 BossMoves matches 240 if score _ _ matches 0 as @a[distance=..30] at @s run playsound minecraft:item.shield.block voice @s ~ ~ ~ 0.7 1.0
    execute if score s10 BossMoves matches 240 unless score $s10.boss.half _ matches 1 as @e[tag=1x1, sort=random, limit=10] run function entity:aec_manager/summon/.square {r: 5, t: 40, dmg: 48, str: 56, id: 104}
    execute if score s10 BossMoves matches 240 if score $s10.boss.half _ matches 1 as @e[tag=1x1, sort=random, limit=12] run function entity:aec_manager/summon/.square {r: 5, t: 40, dmg: 48, str: 56, id: 104}

    execute if score s10 BossMoves matches 280 if score _ _ matches 0 as @a[distance=..30] at @s run playsound minecraft:item.shield.block voice @s ~ ~ ~ 0.7 1.0
    execute if score s10 BossMoves matches 280 unless score $s10.boss.half _ matches 1 as @e[tag=1x1, sort=random, limit=11] run function entity:aec_manager/summon/.square {r: 5, t: 40, dmg: 48, str: 56, id: 104}
    execute if score s10 BossMoves matches 280 if score $s10.boss.half _ matches 1 as @e[tag=1x1, sort=random, limit=13] run function entity:aec_manager/summon/.square {r: 5, t: 40, dmg: 48, str: 56, id: 104}

    execute if score s10 BossMoves matches 320 if score _ _ matches 0 as @a[distance=..30] at @s run playsound minecraft:item.shield.block voice @s ~ ~ ~ 0.7 1.0
    execute if score s10 BossMoves matches 320 unless score $s10.boss.half _ matches 1 as @e[tag=1x1, sort=random, limit=12] run function entity:aec_manager/summon/.square {r: 5, t: 40, dmg: 48, str: 56, id: 104}
    execute if score s10 BossMoves matches 320 if score $s10.boss.half _ matches 1 as @e[tag=1x1, sort=random, limit=14] run function entity:aec_manager/summon/.square {r: 5, t: 40, dmg: 48, str: 56, id: 104}

# reset
execute if score s10 BossMoves matches 360.. run scoreboard players set s10 BossMoves 60
