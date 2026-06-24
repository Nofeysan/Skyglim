#> magic:check/get_mp/macro/calc_hp
# 
# <float> 倍にして取得する
# 
# @input
#   <storage> magic: req_hp.rate
# 
# @output
#   <storage> magic: req_hp.value
# 

# HP 取得
$execute store result storage magic: req_hp.value int $(rate) run scoreboard players get @s MaxHealth
