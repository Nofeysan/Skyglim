# 通知
tellraw @s [{text: "\uE010 鑑定したいアイテムを入れて下さい！",color: "#d94262"}]
execute at @s run playsound minecraft:block.dispenser.dispense voice @s ~ ~ ~ 1 2
