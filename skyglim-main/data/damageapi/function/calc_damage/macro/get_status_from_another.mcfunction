#> damageapi:calc_damage/macro/get_status_from_another
# 
# 魔法で召喚された armor_stand から status を得る
# もしくは item
#

# damage, str 設定
data modify storage km_solver: vars.D set from entity @s data.status.dmg
data modify storage km_solver: vars.S set from entity @s data.status.str

# チャージ量は 100%
scoreboard players set chargerate Temp 100

# cc, cd, luck
execute store result score cc Temp run data get entity @s data.status.cc
execute store result score cd Temp run data get entity @s data.status.cd
scoreboard players add cd Temp 100
execute store result score luck Temp run data get entity @s data.status.luck
