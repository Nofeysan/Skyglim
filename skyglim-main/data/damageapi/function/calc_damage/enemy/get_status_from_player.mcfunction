# D: damage
execute store result storage km_solver: vars.D float 1 run scoreboard players get @s act_Damage

# S: Strength
execute store result storage km_solver: vars.S float 1 run scoreboard players get @s act_Strength

execute store result score cc Temp run scoreboard players get @s act_CritChance
execute store result score cd Temp run scoreboard players get @s act_CritDamage
execute store result score luck Temp run scoreboard players get @s act_Luck

execute store result score chargerate Temp run scoreboard players get @s ChargeRate
execute if predicate damageapi:has_projectile unless score @s occupation matches 1 run scoreboard players set chargerate Temp 100
execute if predicate damageapi:has_projectile if score @s occupation matches 1 run scoreboard players set chargerate Temp 110
