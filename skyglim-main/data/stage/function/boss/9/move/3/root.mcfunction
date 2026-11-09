#> stage:boss/6/move/3/root
# 
# アイテム出しますよ
# 
# 

# item summon & modify
    execute if score s9 BossMoves matches 200 if score $s9.boss.half _ matches 0 run function stage:boss/9/move/3/summon
    execute if score s9 BossMoves matches 200 if score $s9.boss.half _ matches 1 run function stage:boss/9/move/3/summon-half

    execute if score s9 BossMoves matches 200..320 run execute as @e[type=minecraft:item, distance=..40, tag=gimmick.item.s9] run data modify entity @s Motion set value [0.0d, -0.15d, 0.0d]

# onGround のやつにダメージ発生させる
    execute if score s9 BossMoves matches 200..370 as @e[type=minecraft:item, distance=..40, tag=gimmick.item.s9, nbt={OnGround: true}] at @s run function stage:boss/9/move/3/break

# score
    execute if score s9 BossMoves matches 290 run kill @e[type=minecraft:spawner_minecart, tag=gimmick.spawner.s9]
    execute if score s9 BossMoves matches 370.. run scoreboard players set s9 BossMoves 90
