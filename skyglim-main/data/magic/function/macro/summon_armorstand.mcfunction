#> magic:macro/summon_armorstand
# 
# tag と、status を設定
# 
# 

$summon minecraft:armor_stand ~ ~ ~ {Invisible:true, Marker:true, Small:true, Tags:["magic", "$(id)"], PortalCooldown: 202, data: {status: {dmg: $(dmg), str: -1}}}

#! debug
$tellraw @a {text: "\ue010 次のマクロを設定しました：id: $(id), dmg: $(dmg)"}
