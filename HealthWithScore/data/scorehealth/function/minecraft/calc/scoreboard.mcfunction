# 単純に /100　を保存しましょう
execute store result score @s ShowMaxHealth run scoreboard players get @s MaxHealth
scoreboard players operation @s ShowMaxHealth /= #100 CalcHealth

execute store result score @s ShowCurrentHealth run scoreboard players get @s CurrentHealth
scoreboard players operation @s ShowCurrentHealth /= #100 CalcHealth

execute store result score @s ShowAbsorption run scoreboard players get @s Absorption
scoreboard players operation @s ShowAbsorption /= #100 CalcHealth


