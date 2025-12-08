# 通知
tellraw @s [{text: "\uE010 通貨が足りません！",color: "#d94262"}]

execute at @s run playsound minecraft:block.dispenser.dispense voice @s ~ ~ ~ 1 2
