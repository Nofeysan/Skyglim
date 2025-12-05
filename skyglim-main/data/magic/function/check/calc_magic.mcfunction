# 他のステータスを取得
#! ↓職業ごとの Multiplier とか
scoreboard players set multiplier MagicTemp 100
execute if score @s occupation matches 2 run scoreboard players set multiplier MagicTemp 70
execute if score @s occupation matches 4 run scoreboard players set multiplier MagicTemp 115


execute store result score base_dmg MagicTemp run data get entity @s SelectedItem.components."minecraft:custom_data".status.damage 1
scoreboard players operation mp MagicTemp = @s ShowMaxMP

# 計算
scoreboard players add mp MagicTemp 100
scoreboard players operation AbilityDamage MagicTemp = mp MagicTemp
scoreboard players operation AbilityDamage MagicTemp *= scale MagicTemp
scoreboard players operation AbilityDamage MagicTemp /= #100 num
scoreboard players operation AbilityDamage MagicTemp *= multiplier MagicTemp
scoreboard players operation AbilityDamage MagicTemp /= #100 num
scoreboard players operation AbilityDamage MagicTemp *= base_dmg MagicTemp

# storage に保管
execute store result storage damageapi: magic_damage.value int 0.01 run scoreboard players get AbilityDamage MagicTemp

