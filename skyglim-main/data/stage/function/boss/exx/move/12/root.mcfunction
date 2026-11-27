#> stage:boss/6/move/3/root
# 
# アイテム出しますよ
# 
# 

# item summon & modify
    execute if score exx BossMoves matches 200 if score $exx.boss.half _ matches 0 run function stage:boss/exx/move/12/summon

    execute if score exx BossMoves matches 200..520 run execute as @e[type=minecraft:item, distance=..80, tag=gimmick.item.exx] run data modify entity @s Motion set value [0.0d, -0.165d, 0.0d]

    execute if score exx BossMoves matches 200 as @a[distance=..100] at @s run playsound minecraft:entity.item.pickup voice @s ~ ~ ~ 0.6 1
    execute if score exx BossMoves matches 260 as @a[distance=..100] at @s run playsound minecraft:entity.item.pickup voice @s ~ ~ ~ 0.6 1
    execute if score exx BossMoves matches 320 as @a[distance=..100] at @s run playsound minecraft:entity.item.pickup voice @s ~ ~ ~ 0.6 1
    execute if score exx BossMoves matches 380 as @a[distance=..100] at @s run playsound minecraft:entity.item.pickup voice @s ~ ~ ~ 0.6 1
    execute if score exx BossMoves matches 440 as @a[distance=..100] at @s run playsound minecraft:entity.item.pickup voice @s ~ ~ ~ 0.6 1

# onGround のやつにダメージ発生させる
    execute if score exx BossMoves matches 200..520 as @e[type=minecraft:item, distance=..80, tag=gimmick.item.exx, nbt={OnGround: true}] at @s run function stage:boss/exx/move/12/break

# reset
    execute if score exx BossMoves matches 520 run kill @e[type=minecraft:spawner_minecart, tag=gimmick.spawner.exx]
    execute if score exx BossMoves matches 540.. run scoreboard players set exx BossMoves 60
