# 増やす(最大体力の3%)
scoreboard players operation _ Temp = @s MaxHealth
scoreboard players operation _ Temp *= #3 num
scoreboard players operation _ Temp /= #100 num
scoreboard players operation @s Absorption = _ Temp

# 音
execute at @s run playsound minecraft:entity.blaze.shoot voice @s ~ ~ ~ 1 2

# CD (10s)
scoreboard players set @s UnbreakingCoolDown 200
execute at @s run particle minecraft:enchanted_hit ~ ~ ~ 0.5 1 0.5 0.2 100

#! debug
#tellraw @s [{"text": "\ue010 衝撃吸収量 : "},{"score": {"name": "_", "objective": "Temp"}}]

