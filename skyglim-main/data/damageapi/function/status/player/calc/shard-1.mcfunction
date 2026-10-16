##? data get entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.status.<id> で取得
data modify storage calc_stats: use set from storage calc_stats: temp[{Slot: 9b}].components."minecraft:custom_data"

execute store result score _ DamageTemp run data get storage calc_stats: use.status.hp
scoreboard players operation @s act_Health += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: use.status.str
scoreboard players operation @s act_Strength += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: use.status.cc
scoreboard players operation @s act_CritChance += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: use.status.cd
scoreboard players operation @s act_CritDamage += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: use.status.def
scoreboard players operation @s act_Defence += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: use.status.spd
scoreboard players operation @s act_Speed += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: use.status.mp
scoreboard players operation @s act_MagicPoint += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: use.status.luck
scoreboard players operation @s act_Luck += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: use.status.damage
scoreboard players operation @s act_Damage += _ DamageTemp


execute store result score _ DamageTemp run data get storage calc_stats: use.data.refinement.hp
scoreboard players operation @s act_Health += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: use.data.refinement.str
scoreboard players operation @s act_Strength += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: use.data.refinement.cc
scoreboard players operation @s act_CritChance += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: use.data.refinement.cd
scoreboard players operation @s act_CritDamage += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: use.data.refinement.def
scoreboard players operation @s act_Defence += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: use.data.refinement.spd
scoreboard players operation @s act_Speed += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: use.data.refinement.mp
scoreboard players operation @s act_MagicPoint += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: use.data.refinement.luck
scoreboard players operation @s act_Luck += _ DamageTemp

execute store result score _ DamageTemp run data get storage calc_stats: use.data.refinement.damage
scoreboard players operation @s act_Damage += _ DamageTemp

