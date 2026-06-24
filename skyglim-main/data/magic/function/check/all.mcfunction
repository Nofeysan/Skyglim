#> magic:check/all
# 
# 1. HP/MPが足りているかチェックする
# 2. 足りていたら実行
# 

###* 実行チェック
# 必要 mp を保存（i: その値、r: 最大に対する割合[%], h: 体力割合[%]）
execute if data entity @s SelectedItem.components."minecraft:custom_data".data.req_mp.i run function magic:check/get_mp/i
execute if data entity @s SelectedItem.components."minecraft:custom_data".data.req_mp.r run function magic:check/get_mp/r
execute if data entity @s SelectedItem.components."minecraft:custom_data".data.req_mp.h run function magic:check/get_mp/h

# 魔法を実行
$execute unless entity @s[tag=magic.failed] run function magic:act/$(id)

# tag reset
tag @s remove magic.failed
