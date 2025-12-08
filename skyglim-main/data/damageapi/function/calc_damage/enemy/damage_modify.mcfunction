#> damageapi:calc_damage/enemy/damage_modify
# 
# ダメージ表記のアイテムにいろいろする
# 
# 

data modify entity @s CustomName set from entity @s Item.components."minecraft:custom_name"
data modify entity @s CustomNameVisible set value true
data modify entity @s PickupDelay set value 32767
data modify entity @s NoGravity set value true
data modify entity @s Motion set value [0.0d, 0.02d, 0.0d]
data modify entity @s PortalCooldown set value 120
tag @s add modified
