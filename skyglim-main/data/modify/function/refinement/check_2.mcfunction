###* 
###* 鑑定可能アイテムがある状態
###* 

###* レアリティ取得 & コスト確認
execute store result score rarity Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data."rarity"

###* チェック
# 1 = Normal, ...
execute if score rarity Temp matches 1 run function modify:refinement/list/have_currency/1
execute if score rarity Temp matches 2 run function modify:refinement/list/have_currency/2
execute if score rarity Temp matches 3 run function modify:refinement/list/have_currency/3
execute if score rarity Temp matches 4 run function modify:refinement/list/have_currency/4
execute if score rarity Temp matches 5 run function modify:refinement/list/have_currency/5

###* fail タグが無かったら実行！
execute unless entity @s[tag=failed] run function modify:refinement/list/act

###* タグ・スコアリセット
scoreboard players reset rarity Temp
tag @s remove failed
