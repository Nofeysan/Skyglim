# 通し番号を取得
execute store result storage items: magic.num int 1 run data get entity @s SelectedItem.components."minecraft:repair_cost"

# マクロ実行
function magic:macro/give_item with storage items: magic




