#> damageapi:calc_damage/macro/get_status_from_another
# 
# 魔法で召喚された armor_stand から status を得る
# もしくは item
# 

data modify storage km_solver: vars.S set from entity @s data.status.str
data modify storage km_solver: vars.D set from entity @s data.status.dmg
scoreboard players set chargerate Temp 100
