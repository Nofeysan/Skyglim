#> stage:boss/11/move/1/root
# 
# 6方向にアイテム飛ばすやつ
# as boss at @s
# 

# tick
    scoreboard players operation _ _ = s13 BossMoves
    scoreboard players operation _ _ %= #10 num

# AoE
    execute if score s13 BossMoves matches 200..220 if score _ _ matches 0 run playsound minecraft:entity.experience_orb.pickup voice @a ~ 229 ~ 0.5 2
    execute if score s13 BossMoves matches 230..240 if score $s13.boss.half _ matches 1 if score _ _ matches 0 run playsound minecraft:entity.experience_orb.pickup voice @a ~ 229 ~ 0.5 2
    execute if score s13 BossMoves matches 200 at @a[distance=..80] positioned ~ 12.19 ~ run function entity:aec_manager/summon/.cyl {r: 8, t: 40, dmg: 52, str: 38, id: 131}
    execute if score s13 BossMoves matches 210 at @a[distance=..80] positioned ~ 12.19 ~ run function entity:aec_manager/summon/.cyl {r: 8, t: 40, dmg: 52, str: 38, id: 131}
    execute if score s13 BossMoves matches 220 at @a[distance=..80] positioned ~ 12.19 ~ run function entity:aec_manager/summon/.cyl {r: 8, t: 40, dmg: 52, str: 38, id: 131}
    execute if score s13 BossMoves matches 230 if score $s13.boss.half _ matches 1 at @a[distance=..80] positioned ~ 12.19 ~ run function entity:aec_manager/summon/.cyl {r: 8, t: 40, dmg: 52, str: 38, id: 131}
    execute if score s13 BossMoves matches 240 if score $s13.boss.half _ matches 1 at @a[distance=..80] positioned ~ 12.19 ~ run function entity:aec_manager/summon/.cyl {r: 8, t: 40, dmg: 52, str: 38, id: 131}

# reset
    execute if score s13 BossMoves matches 240.. run scoreboard players set s13 BossMoves 100
