#> modify:restore/list/nums/type/sword
# 
# sword 用の設定
# 
# @input
#   id: item id
# 

# id, item_model
data modify block ~ ~-1 ~ Items[{Slot:13b}].id set value "minecraft:clock"
$data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:item_model" set value "minecraft:$(id)"
