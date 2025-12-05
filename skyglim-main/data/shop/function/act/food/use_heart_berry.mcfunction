##> shop:act/root
##* 
##* heart_berry (HP: 12%)
##* 
##* 

# 幸運を消す
effect clear @s minecraft:luck

# 回復処理
scoreboard players operation _ Temp = @s MaxHealth
scoreboard players operation _ Temp *= #12 num
scoreboard players operation _ Temp /= #100 num

scoreboard players operation @s CurrentHealth += _ Temp

scoreboard players operation _ Temp /= #100 num

# 通知と音
execute at @s run playsound minecraft:block.brewing_stand.brew voice @s ~ ~ ~ 1 1

tellraw @s [{"text": "* HP +","color": "gray"},{"score": {"name": "_","objective": "Temp"}}]
