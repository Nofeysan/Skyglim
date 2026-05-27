##? ステータス関連
# ステータス計算
function damageapi:status/player/check

# ステータスを有効化
function damageapi:status/player/set_status








###* Refinement, Restore, Enchantment, Shop
execute at @s if entity @e[type=minecraft:armor_stand,tag=restore,distance=..7] as @n[type=minecraft:armor_stand,tag=restore,distance=..7] at @s run function modify:restore/inv_change
execute at @s if entity @e[type=minecraft:armor_stand,tag=refinement,distance=..7] as @n[type=minecraft:armor_stand,tag=refinement,distance=..7] at @s run function modify:refinement/inv_change
execute at @s if entity @e[type=minecraft:armor_stand,tag=enchantment,distance=..7] as @n[type=minecraft:armor_stand,tag=enchantment,distance=..7] at @s run function modify:enchantment/inv_change

execute at @s if entity @e[type=minecraft:armor_stand,tag=weapon,distance=..7] as @n[type=minecraft:armor_stand,tag=weapon,distance=..7] at @s run function shop:system/weapon/inv_change
execute at @s if entity @e[type=minecraft:armor_stand,tag=armor,distance=..7] as @n[type=minecraft:armor_stand,tag=armor,distance=..7] at @s run function shop:system/armor/inv_change
execute at @s if entity @e[type=minecraft:armor_stand,tag=other,distance=..7] as @n[type=minecraft:armor_stand,tag=other,distance=..7] at @s run function shop:system/other/inv_change
execute at @s if entity @e[type=minecraft:armor_stand,tag=magic,distance=..7] as @n[type=minecraft:armor_stand,tag=magic,distance=..7] at @s run function shop:system/magic/inv_change


# 進捗削除
advancement revoke @s only damageapi:inventory_change
