#> modify:restore/list/nums/type/sword
# 
# sword 用の設定
# 
# @input
# 
# 

# id, item_model
data modify block ~ ~-1 ~ Items[{Slot:13b}].id set value "minecraft:bow"

# エンチャント追加
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:enchantments" merge value {"shop:no_ammo": 1}

# 弓の連射制限
$data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:use_cooldown" set value {seconds: $(s), cooldown_group: "minecraft:bow"}
