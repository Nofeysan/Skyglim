#> modify:restore/list/nums/type/sword
# 
# sword 用の設定
# 
# @input
#   id: wooden/stone/iron/gold/diamond/netherite
# 

# id, item_model
data modify block ~ ~-1 ~ Items[{Slot:13b}].id set value "minecraft:feather"
$data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:item_model" set value "minecraft:$(id)_axe"

# 攻撃速度設定
data remove block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:attribute_modifiers"[-1]
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:attribute_modifiers"[{id: "minecraft:item.weapon"}].amount set value -3.5d
