#> magic:macro/summon_armorstand
# 
# tag と、status を設定
# 
# @inputs
#   <storage>
#       damageapi: magic_damage.
#                   id: 魔法識別用の主キー
#                   dmg: 魔法用に計算された値
#                   cc, cd, luck: プレイヤーから入手
# 

$summon minecraft:armor_stand ~ ~ ~ {Invisible:true, Marker:true, Small:true, Tags:["magic", "$(id)"], PortalCooldown: 202, data: {status: {dmg: $(dmg), str: -1, cc: $(cc), cd: $(cd), luck: $(luck)}}}

#! debug
#$tellraw @a {text: "\ue010 次のマクロを設定しました：id: $(id), dmg: $(dmg)"}
