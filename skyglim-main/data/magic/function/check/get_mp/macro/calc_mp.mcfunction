#> magic:check/get_mp/i
# 
# <float> 倍にして取得する
# 
# @input
#   <storage> magic: req_mp.rate
# 
# @output
#   <storage> magic: req_mp.value
# 

# MP 取得
$execute store result storage magic: req_mp.value int $(rate) run scoreboard players get @s MaxMP
