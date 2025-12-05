#> damageapi:player_tick
##* 
##* ショップのアイテムを取った後
##* アマスタで分割する
##*
##* 

##+ 共通 : ガラス
execute if items entity @s player.cursor *[repair_cost=10000] run function modify:common/glass

##+ appraise / 鑑定
execute if items entity @s player.cursor *[repair_cost=20000] at @n[type=minecraft:armor_stand,tag=appraise] run function modify:appraise/click_appraise

##+ refineemnt / 洗練
execute if items entity @s player.cursor *[repair_cost=30000] at @n[type=minecraft:armor_stand,tag=refinement] run function modify:refinement/click_refinement

##+ enchantment / 追加効果
# 数が多いので分割探索します
execute if entity @e[type=minecraft:armor_stand, tag=enchantment] at @n[type=minecraft:armor_stand,tag=enchantment] run function modify:enchantment/search/root

##+ Shop / ショップ
# 数が多いので(ry
execute if entity @e[type=minecraft:armor_stand, tag=weapon] at @n[type=minecraft:armor_stand,tag=weapon] run function shop:system/weapon/search
execute if entity @e[type=minecraft:armor_stand, tag=armor] at @n[type=minecraft:armor_stand,tag=armor] run function shop:system/armor/search
execute if entity @e[type=minecraft:armor_stand, tag=other] at @n[type=minecraft:armor_stand,tag=other] run function shop:system/other/search

