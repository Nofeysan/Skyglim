#> damageapi:player_tick
##* 
##* ショップのアイテムを取った後
##* アマスタで分割する
##*
##* 

##+ 共通 : ガラス
execute if items entity @s player.cursor *[repair_cost=10000] run function modify:common/glass

##+ restore / 鑑定
execute if items entity @s player.cursor *[repair_cost=20000] at @n[type=minecraft:armor_stand,tag=restore] run function modify:restore/click_restore

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
execute if entity @e[type=minecraft:armor_stand, tag=magic] at @n[type=minecraft:armor_stand,tag=magic] run function shop:system/magic/search

# token
execute if entity @e[type=minecraft:armor_stand, tag=token-1] at @n[type=minecraft:armor_stand,tag=token-1] run function shop:system/token/1/search
execute if entity @e[type=minecraft:armor_stand, tag=token-2] at @n[type=minecraft:armor_stand,tag=token-2] run function shop:system/token/2/search
execute if entity @e[type=minecraft:armor_stand, tag=token-3] at @n[type=minecraft:armor_stand,tag=token-3] run function shop:system/token/3/search
execute if entity @e[type=minecraft:armor_stand, tag=token-4] at @n[type=minecraft:armor_stand,tag=token-4] run function shop:system/token/4/search

