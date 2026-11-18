#> stage:boss/2/move/3/root
# 
# アイテム出しますよ
# 
# 

# item summon & modify
    execute if score ex5 BossMoves matches 200 if score $ex5.boss.half _ matches 0 run function stage:boss/ex5/move/2/summon
    execute if score ex5 BossMoves matches 200 if score $ex5.boss.half _ matches 1 run function stage:boss/ex5/move/2/summon-half

    execute if score ex5 BossMoves matches 200..400 run execute as @e[type=minecraft:item, distance=..80, tag=gimmick.item.ex5] run data modify entity @s Motion set value [0.0d, -0.15d, 0.0d]

    execute if score ex5 BossMoves matches 200 as @a[distance=..100] at @s run playsound minecraft:entity.item.pickup voice @s ~ ~ ~ 0.6 1
    execute if score ex5 BossMoves matches 250 as @a[distance=..100] at @s run playsound minecraft:entity.item.pickup voice @s ~ ~ ~ 0.6 1
    execute if score ex5 BossMoves matches 300 as @a[distance=..100] at @s run playsound minecraft:entity.item.pickup voice @s ~ ~ ~ 0.6 1

# onGround のやつにダメージ発生させる
    execute if score ex5 BossMoves matches 200..400 as @e[type=minecraft:item, distance=..80, tag=gimmick.item.ex5, nbt={OnGround: true}] at @s run function stage:boss/ex5/move/2/break

# reset
    execute if score ex5 BossMoves matches 310 run kill @e[type=minecraft:spawner_minecart, tag=gimmick.spawner.ex5]
    execute if score ex5 BossMoves matches 400.. run scoreboard players set ex5 BossMoves 80
