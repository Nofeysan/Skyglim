#> stage:boss/6/move/3/root
# 
# アイテム出しますよ
# 
# 

# item summon & modify
    execute if score exx BossMoves matches 700 run function stage:boss/exx/move/init/2/item/summon

    execute if score exx BossMoves matches 700..900 run execute as @e[type=minecraft:item, distance=..80, tag=gimmick.item.exx] run data modify entity @s Motion set value [0.0d, -0.165d, 0.0d]

    execute if score exx BossMoves matches 700 as @a[distance=..100] at @s run playsound minecraft:entity.item.pickup voice @s ~ ~ ~ 0.6 1
    execute if score exx BossMoves matches 760 as @a[distance=..100] at @s run playsound minecraft:entity.item.pickup voice @s ~ ~ ~ 0.6 1
    execute if score exx BossMoves matches 820 as @a[distance=..100] at @s run playsound minecraft:entity.item.pickup voice @s ~ ~ ~ 0.6 1

# onGround のやつにダメージ発生させる
    execute if score exx BossMoves matches 700..920 as @e[type=minecraft:item, distance=..80, tag=gimmick.item.exx, nbt={OnGround: true}] at @s run function stage:boss/exx/move/init/2/item/break

# reset
    execute if score exx BossMoves matches 930 run kill @e[type=minecraft:spawner_minecart, tag=gimmick.spawner.exx]
