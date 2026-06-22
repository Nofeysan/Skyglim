#> modify:restore/list/nums/type/sword
# 
# sword 用の設定
# 
# @input
#   id: id
# 

# id, item_model
$data modify block ~ ~-1 ~ Items[{Slot:13b}].id set value "minecraft:$(id)"
