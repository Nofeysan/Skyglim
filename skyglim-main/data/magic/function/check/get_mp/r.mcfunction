#> magic:check/get_mp/r
# 
# 実数値の必要 MP
# 100倍量にして MP を評価する
# 
# @output
#   <score> req_mp _
#   <storage> magic: req_mp.value
# 

# 必要 MP 保存
# 割合取得
execute store result storage magic: req_mp.rate double 0.01 run data get entity @s SelectedItem.components."minecraft:custom_data".data.req_mp.r

# マクロで必要 MP 計算
function magic:check/get_mp/macro/calc_mp with storage magic: req_mp

execute store result score req_mp _ run data get storage magic: req_mp.value

# 評価
execute if score req_mp _ > @s CurrentMP run return run function magic:check/fail
