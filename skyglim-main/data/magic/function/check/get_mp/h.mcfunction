#> magic:check/get_mp/r
# 
# 実数値の必要 HP
# 100倍量にして HP を評価する
# 
# @output
#   <score> req_mp _
#   <storage> magic: req_mp.value
# 

# 必要 HP 保存
# 割合取得
execute store result storage magic: req_hp.rate double 0.01 run data get entity @s SelectedItem.components."minecraft:custom_data".data.req_mp.h

# マクロで必要 HP 計算
function magic:check/get_mp/macro/calc_hp with storage magic: req_hp

execute store result score req_hp _ run data get storage magic: req_hp.value
execute store result storage magic: req_hp.show int 0.01 run data get storage magic: req_hp.value

# 評価
execute if score req_hp _ > @s CurrentHealth run function magic:check/fail
