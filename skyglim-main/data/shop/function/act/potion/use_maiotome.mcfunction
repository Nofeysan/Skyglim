##> shop:act/root
##* 
##* "舞"乙女 (MP +20%)
##* 
##* 

# 幸運を消す
effect clear @s minecraft:luck

# 回復処理
scoreboard players operation _ Temp = @s MaxMP
scoreboard players operation _ Temp *= #30 num
scoreboard players operation _ Temp /= #100 num

scoreboard players operation @s CurrentMP += _ Temp

scoreboard players operation _ Temp /= #100 num

# 通知と音
execute at @s run playsound minecraft:block.brewing_stand.brew voice @s ~ ~ ~ 1 1

tellraw @s [{"text": "* MP +","color": "gray"},{"score": {"name": "_","objective": "Temp"}}]
