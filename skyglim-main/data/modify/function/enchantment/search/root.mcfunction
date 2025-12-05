###* さらに分けます
# アイテムタイプを取得
execute store result score e.type Temp run data get block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.refinement.type

#? まず通貨あるか確認するぞ！
# 分割探索
execute if score e.type Temp matches 1..3 run function modify:enchantment/search/cost/melee-range-magic
execute if score e.type Temp matches 4 run function modify:enchantment/search/cost/armor.h
execute if score e.type Temp matches 5 run function modify:enchantment/search/cost/armor.c
execute if score e.type Temp matches 6 run function modify:enchantment/search/cost/armor.l
execute if score e.type Temp matches 7 run function modify:enchantment/search/cost/armor.f
execute if score e.type Temp matches 8 run function modify:enchantment/search/cost/tool

# それに応じて実行
execute unless entity @s[tag=e.failed] if score e.type Temp matches 1..3 run function modify:enchantment/search/melee-range-magic
execute unless entity @s[tag=e.failed] if score e.type Temp matches 4 run function modify:enchantment/search/armor.h
execute unless entity @s[tag=e.failed] if score e.type Temp matches 5 run function modify:enchantment/search/armor.c
execute unless entity @s[tag=e.failed] if score e.type Temp matches 6 run function modify:enchantment/search/armor.l
execute unless entity @s[tag=e.failed] if score e.type Temp matches 7 run function modify:enchantment/search/armor.f
execute unless entity @s[tag=e.failed] if score e.type Temp matches 8 run function modify:enchantment/search/tool

###* 数値があれば実行
# 実行！
execute unless entity @s[tag=e.failed] if score e.id Temp matches 1 run scoreboard players set act.enc Temp 1
execute unless entity @s[tag=e.failed] if score e.id Temp matches 1 if score e.type Temp matches 1..2 run function modify:refinement/list/id/add_lore
execute unless entity @s[tag=e.failed] if score e.id Temp matches 1 if score e.type Temp matches 3 run function modify:refinement/list/id/add_lore_other
execute unless entity @s[tag=e.failed] if score e.id Temp matches 1 if score e.type Temp matches 4..7 run function modify:refinement/list/id/add_lore
execute unless entity @s[tag=e.failed] if score e.id Temp matches 1 if score e.type Temp matches 8 run function modify:refinement/list/id/add_lore_other

# スコアリセット
scoreboard players reset e.id Temp
tag @s remove e.failed
