##> damageapi:status/player/check
##* 
##* Enchantment の倍率効果
##* 
##* 

#+ 一行で収まる場合はここに書く、収まらない場合は別のfunctionを使う

###// melee/range/magic

###* armor-head
# data が存在したら取得する
scoreboard players set equip.head Temp 43002
execute if data entity @s equipment.head store result score equip.head Temp run data get entity @s equipment.head.components."minecraft:custom_data".data.enchantment

execute unless score equip.head Temp matches 43002 run function modify:enchantment/calc/macro/root.head
execute unless score equip.head Temp matches 43001 run effect clear @s minecraft:water_breathing

# 逆境
#todo デバフのpredicate作って倍率かける

###* armor-leggings
scoreboard players set equip.legs Temp -1
execute if data entity @s equipment.legs store result score equip.legs Temp run data get entity @s equipment.legs.components."minecraft:custom_data".data.enchantment
execute if score equip.legs Temp matches 45003..45004 run function modify:enchantment/calc/macro/root.legs

# うさぎのこころ
execute if score equip.legs Temp matches 45007 run effect give @s minecraft:jump_boost infinite 2 true
execute unless score equip.legs Temp matches 45007 run effect clear @s minecraft:jump_boost

###* amror-chestplate
scoreboard players set equip.chest Temp -1
execute if data entity @s equipment.chest store result score equip.chest Temp run data get entity @s equipment.chest.components."minecraft:custom_data".data.enchantment
execute if score equip.chest Temp matches 44004..44006 run function modify:enchantment/calc/macro/root.chest

###// armor-feet

###// tool

