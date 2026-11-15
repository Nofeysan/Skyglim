#> stage:boss/11/move/1/root
# 
# 6方向にアイテム飛ばすやつ
# as boss at @s
# 

# sound, particke
    scoreboard players operation _ _ = s15 BossMoves
    scoreboard players operation _ _ %= #20 num
    execute if score s15 BossMoves matches 200..240 if score _ _ matches 0 as @a[distance=..80] at @s run playsound minecraft:entity.firework_rocket.launch voice @s ~ ~ ~ 0.8 1
    execute if score $s15.boss.half _ matches 1 if score s15 BossMoves matches 260..280 if score _ _ matches 0 as @a[distance=..80] at @s run playsound minecraft:entity.firework_rocket.launch voice @s ~ ~ ~ 0.8 1

# AoE
    execute if score s15 BossMoves matches 200 positioned ~ 74 ~ run function entity:aec_manager/summon/.cyl {r: 25, t: 80, dmg: 62, str: 46, id: 151}

    execute if score s15 BossMoves matches 200 at @a[distance=..80] positioned ~ 74 ~ run function entity:aec_manager/summon/.cyl {r: 19, t: 80, dmg: 62, str: 46, id: 151}
    execute if score s15 BossMoves matches 220 at @a[distance=..80] positioned ~ 74 ~ run function entity:aec_manager/summon/.cyl {r: 19, t: 80, dmg: 62, str: 46, id: 151}
    execute if score s15 BossMoves matches 240 at @a[distance=..80] positioned ~ 74 ~ run function entity:aec_manager/summon/.cyl {r: 19, t: 80, dmg: 62, str: 46, id: 151}
    execute if score $s15.boss.half _ matches 1 if score s15 BossMoves matches 260 at @a[distance=..80] positioned ~ 74 ~ run function entity:aec_manager/summon/.cyl {r: 19, t: 80, dmg: 62, str: 46, id: 151}
    execute if score $s15.boss.half _ matches 1 if score s15 BossMoves matches 280 at @a[distance=..80] positioned ~ 74 ~ run function entity:aec_manager/summon/.cyl {r: 19, t: 80, dmg: 62, str: 46, id: 151}

# reset
    execute if score s15 BossMoves matches 300.. run scoreboard players set s15 BossMoves 60
