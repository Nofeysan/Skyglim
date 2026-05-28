#> shop:sell/roop/el
# 
# EL count
# 
# @output
# score:
#   $sell_lb _: lb の数
# 

# 移行
scoreboard players operation $sell_lb _ = $total _

# 算出
scoreboard players operation $sell_lb _ /= #64 num
scoreboard players operation $total _ %= #64 num
