#> damageapi:calc_damage/enemy/get_status_from_player
# 
# mob のダメージ処理
# - player からデータを取得する
# 

# D: damage
execute store result storage km_solver: vars.D float 1 run scoreboard players get @s act_Damage

# S: Strength
execute store result storage km_solver: vars.S float 1 run scoreboard players get @s act_Strength

# その他
execute store result score cc Temp run scoreboard players get @s act_CritChance
execute store result score cd Temp run scoreboard players get @s act_CritDamage
execute store result score luck Temp run scoreboard players get @s act_Luck

# チャージ量, 遠距離武器の場合常に100% (天弓なら130%)
execute store result score chargerate Temp run scoreboard players get @s ChargeRate

execute if predicate damageapi:has_projectile unless score @s occupation matches 1 run scoreboard players set chargerate Temp 100
execute if predicate damageapi:has_projectile if score @s occupation matches 1 run scoreboard players set chargerate Temp 120
