###* act magic with repair_cost(item.components)
execute store result storage damageapi: magic.id int 1 run data get entity @s SelectedItem.components."minecraft:repair_cost" 1
function magic:check/all with storage damageapi: magic

# 進捗を削除する
advancement revoke @s only item:consume
