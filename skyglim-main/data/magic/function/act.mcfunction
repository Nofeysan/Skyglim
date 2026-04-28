#> magic:act
# 
# アイテムを使用した後の処理
# use_reminder で残ったアイテムを参照する
# 

# repair_cost で実行
data modify storage damageapi: magic.id set from entity @s SelectedItem.components."minecraft:repair_cost"
function magic:check/all with storage damageapi: magic

# 進捗を削除する
advancement revoke @s only magic:consume
