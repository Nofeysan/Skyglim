#> stage:boss/6/move/2/root
# 
# スポナーからランダムに浮かせてAoE
# 
# 

# カウント用
    scoreboard players operation _ _ = s10 BossMoves
    scoreboard players operation _ _ %= #20 num

# 200~279: 予告
    execute if score s10 BossMoves matches 200..270 run function stage:boss/10/move/2/first

# 280~359: 爆発

# 360~399: 予告
    execute if score s10 BossMoves matches 360..420 run function stage:boss/10/move/2/second

# 480~559: 爆発
    execute if score s10 BossMoves matches 480..500 if score _ _ matches 0 as @a[distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.7 1.0

    execute if score s10 BossMoves matches 480 as @e[tag=1x1, sort=random, limit=13] run function entity:aec_manager/summon/.square {r: 5, t: 40, dmg: 48, str: 56, id: 104}
    execute if score s10 BossMoves matches 500 as @e[tag=2x2, sort=random, limit=2] run function entity:aec_manager/summon/.square {r: 10, t: 40, dmg: 48, str: 56, id: 104}

# reset
execute if score s10 BossMoves matches 560.. run scoreboard players set s10 BossMoves 60
