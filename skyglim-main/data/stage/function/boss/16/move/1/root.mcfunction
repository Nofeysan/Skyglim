#> stage:boss/11/move/1/root
# 
# 6方向にアイテム飛ばすやつ
# as boss at @s
# 

# time
    scoreboard players operation _ _ = s16 BossMoves
    scoreboard players operation _ _ %= #10 num
    execute if score _ _ matches 0 if score s16 BossMoves matches 200..220 as @a[distance=..75] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.2 2
    execute if score _ _ matches 0 if score s16 BossMoves matches 280..300 as @a[distance=..75] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.2 2

# AoE
    execute if score s16 BossMoves matches 200 at @a[distance=..80] positioned ~ 143 ~ run function entity:aec_manager/summon/.cyl {r: 7, t: 40, dmg: 69, str: 51, id: 161}
    execute if score s16 BossMoves matches 210 at @a[distance=..80] positioned ~ 143 ~ run function entity:aec_manager/summon/.cyl {r: 7, t: 40, dmg: 69, str: 51, id: 161}
    execute if score s16 BossMoves matches 220 at @a[distance=..80] positioned ~ 143 ~ run function entity:aec_manager/summon/.cyl {r: 7, t: 40, dmg: 69, str: 51, id: 161}

    execute if score s16 BossMoves matches 280 at @a[distance=..80] positioned ~ 143 ~ run function entity:aec_manager/summon/.cyl {r: 7, t: 40, dmg: 69, str: 51, id: 161}
    execute if score s16 BossMoves matches 290 at @a[distance=..80] positioned ~ 143 ~ run function entity:aec_manager/summon/.cyl {r: 7, t: 40, dmg: 69, str: 51, id: 161}
    execute if score s16 BossMoves matches 300 at @a[distance=..80] positioned ~ 143 ~ run function entity:aec_manager/summon/.cyl {r: 7, t: 40, dmg: 69, str: 51, id: 161}

# reset
    execute if score s16 BossMoves matches 300.. run scoreboard players set s16 BossMoves 60
