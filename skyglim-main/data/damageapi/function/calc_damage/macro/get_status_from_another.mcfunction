#> damageapi:calc_damage/macro/get_status_from_another
# 
# 魔法で召喚された armor_stand から status を得る
# 
# 

$execute store result storage km_solver: vars.D float 1 run data get storage damageapi: list.$(uuid).dmg
$execute store result storage km_solver: vars.S float 1 run data get storage damageapi: list.$(uuid).str
scoreboard players set chargerate Temp 100
