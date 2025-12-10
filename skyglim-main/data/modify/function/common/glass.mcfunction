#> modify:modify_playertick
# 
# スペース埋めるためのガラスを取った時の処理
# ガラス消して、近くの container を元に戻す
# 
# 

clear @s *[repair_cost=10000]
execute at @n[type=minecraft:armor_stand, tag=restore,distance=..7] run function modify:restore/inv_change
execute at @n[type=minecraft:armor_stand, tag=refinement,distance=..7] run function modify:refinement/inv_change
execute at @n[type=minecraft:armor_stand, tag=enchantment,distance=..7] run function modify:enchantment/inv_change

execute at @n[type=minecraft:armor_stand, tag=weapon,distance=..7] run function shop:system/weapon/inv_change
execute at @n[type=minecraft:armor_stand, tag=armor,distance=..7] run function shop:system/armor/inv_change
execute at @n[type=minecraft:armor_stand, tag=other,distance=..7] run function shop:system/other/inv_change
#give @s minecraft:diamond
