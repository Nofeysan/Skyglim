#> stage:boss/6/move/2/root
# 
# アイテムが、浮いて、くるよ
# 
# 

# spawner (200, 300, 400 で出る)
    execute if score s15 BossMoves matches 200 unless score $s15.boss.half _ matches 1 run function stage:boss/15/move/3/summon
    execute if score s15 BossMoves matches 200 if score $s15.boss.half _ matches 1 run function stage:boss/15/move/3/summon-half
    execute if score s15 BossMoves matches 401 run kill @e[type=minecraft:spawner_minecart, tag=gimmick.spawner.s15]

# item check
    execute if score s15 BossMoves matches 200..600 as @e[type=minecraft:item, tag=gimmick.item.s15] at @s if entity @a[distance=..1.5] run function stage:boss/15/move/3/break

# reset
    execute if score s15 BossMoves matches 600 run kill @e[type=minecraft:item, tag=gimmick.item.s15]
    execute if score s15 BossMoves matches 600.. run scoreboard players set s15 BossMoves 60
