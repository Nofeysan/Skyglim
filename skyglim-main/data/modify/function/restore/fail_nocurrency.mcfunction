# 通知
tellraw @s [{translate: "restore.fail.nomoney",color: "#d94262"}]
execute at @s run playsound minecraft:block.dispenser.dispense voice @s ~ ~ ~ 1 2

# タグ
tag @s add failed
