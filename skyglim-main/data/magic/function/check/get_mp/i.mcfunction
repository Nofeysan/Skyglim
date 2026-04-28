#> magic:check/get_mp/i
# 
# 実数値の必要 MP
# 100倍量にして MP を評価する
# 
# @output
#   <score> req_mp _
#   <storage> magic: req_mp.value
# 

# 必要 MP 保存
execute store result storage magic: req_mp.value int 100 run data get entity @s SelectedItem.components."minecraft:custom_data".data.req_mp.i
execute store result score req_mp _ run data get storage magic: req_mp.value
execute store result storage magic: req_mp.show int 0.01 run data get storage magic: req_mp.value

# 評価
execute if score req_mp _ > @s CurrentMP run function magic:check/fail
