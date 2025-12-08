#> damageapi:calc_damage/enemy/armor/lifesteal
# 
# 
# 
# 

# 計算
scoreboard players operation _ Temp = @s MaxHealth
scoreboard players operation _ Temp /= #100 num
scoreboard players operation @s CurrentHealth += _ Temp
