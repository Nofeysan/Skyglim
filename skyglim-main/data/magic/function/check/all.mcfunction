###* 実行チェック
# 必要 mp を保存
execute store result score req_mp MagicId run data get entity @s SelectedItem.components."minecraft:custom_data".data.req_mp
scoreboard players operation req_mp MagicId *= #100 num

# mp を評価
execute unless score @s CurrentMP >= req_mp MagicId run return run function magic:check/fail

###* 魔法を実行(別ファイル)
$execute unless entity @s[tag=failed] at @s run function magic:act/$(id)


###* リセット
