##? data get entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.status.<id> で取得
data modify storage calc_stats: temp set from entity @s Inventory[{Slot: 11b}].components.minecraft:custom_data

execute store result score _ DamageTemp run data get storage calc_stats: temp.status.hp
scoreboard players operation @s act_Health += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: temp.status.str
scoreboard players operation @s act_Strength += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: temp.status.cc
scoreboard players operation @s act_CritChance += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: temp.status.cd
scoreboard players operation @s act_CritDamage += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: temp.status.def
scoreboard players operation @s act_Defence += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: temp.status.spd
scoreboard players operation @s act_Speed += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: temp.status.mp
scoreboard players operation @s act_MagicPoint += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: temp.status.luck
scoreboard players operation @s act_Luck += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: temp.status.damage
scoreboard players operation @s act_Damage += _ DamageTemp


execute store result score _ DamageTemp run data get storage calc_stats: temp.data.refinement.hp
scoreboard players operation @s act_Health += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: temp.data.refinement.str
scoreboard players operation @s act_Strength += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: temp.data.refinement.cc
scoreboard players operation @s act_CritChance += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: temp.data.refinement.cd
scoreboard players operation @s act_CritDamage += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: temp.data.refinement.def
scoreboard players operation @s act_Defence += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: temp.data.refinement.spd
scoreboard players operation @s act_Speed += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: temp.data.refinement.mp
scoreboard players operation @s act_MagicPoint += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: temp.data.refinement.luck
scoreboard players operation @s act_Luck += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: temp.data.refinement.damage
scoreboard players operation @s act_Damage += _ DamageTemp

