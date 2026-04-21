# 通知
tellraw @s [{translate: "shop.buy.fail.no_currency",color: "#d94262"}]

execute at @s run playsound minecraft:block.dispenser.dispense voice @s ~ ~ ~ 1 2
