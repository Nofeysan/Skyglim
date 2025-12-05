###? as 指定済み
###* HP: 0.5% を回復
scoreboard players operation @s Temp = @s MaxHealth
scoreboard players operation @s Temp /= #2 num
scoreboard players operation @s Temp /= #100 num

scoreboard players operation @s CurrentHealth += @s Temp

scoreboard players reset @s Temp

###* MP: 1% を回復
scoreboard players operation @s Temp = @s MaxMP
scoreboard players operation @s Temp /= #100 num

scoreboard players operation @s CurrentMP += @s Temp

scoreboard players reset @s Temp
