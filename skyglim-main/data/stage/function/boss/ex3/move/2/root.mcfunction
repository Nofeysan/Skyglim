#> stage:boss/6/move/2/root
# 
# アイテム出しますよ
# 
# 

# item summon & modify
    execute if score ex3 BossMoves matches 200 run function stage:boss/ex3/move/2/summon

    execute if score ex3 BossMoves matches 200..400 run execute as @e[type=minecraft:item, distance=..80, tag=gimmick.item.ex3] run data modify entity @s Motion set value [0.0d, -0.165d, 0.0d]

    execute if score ex3 BossMoves matches 200 as @a[distance=..100] at @s run playsound minecraft:entity.item.pickup voice @s ~ ~ ~ 0.6 1
    execute if score ex3 BossMoves matches 260 as @a[distance=..100] at @s run playsound minecraft:entity.item.pickup voice @s ~ ~ ~ 0.6 1
    execute if score ex3 BossMoves matches 320 as @a[distance=..100] at @s run playsound minecraft:entity.item.pickup voice @s ~ ~ ~ 0.6 1

# onGround のやつにダメージ発生させる
    execute if score ex3 BossMoves matches 200..420 as @e[type=minecraft:item, distance=..80, tag=gimmick.item.ex3, nbt={OnGround: true}] at @s run function stage:boss/ex3/move/2/break

# reset
    execute if score ex3 BossMoves matches 330 run kill @e[type=minecraft:spawner_minecart, tag=gimmick.spawner.ex3]
    execute if score ex3 BossMoves matches 420.. run scoreboard players set ex3 BossMoves 80
