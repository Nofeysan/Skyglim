#> modify:restore/list/nums/type/sword
# 
# sword 用の設定
# 
# @input
#   p: piercing lvl.
#   q: quick_charge lvl.
#   m: multi_charge lvl.
# 

# id, item_model
data modify block ~ ~-1 ~ Items[{Slot:13b}].id set value "minecraft:crossbow"

# エンチャント追加
$data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:enchantments" merge value {"minecraft:piercing": $(p), "shop:no_ammo": 1, "minecraft:quick_charge": $(q), "shop:multi_charge": $(m)}

# 弓の連射制限
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:use_cooldown" set value {seconds: 0.25, cooldown_group: "minecraft:bow"}
