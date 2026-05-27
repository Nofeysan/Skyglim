# 通知
tellraw @s [{translate: "refinement.fail.noitem",color: "#d94262"}]
execute at @s run playsound minecraft:block.dispenser.dispense voice @s ~ ~ ~ 1 2
