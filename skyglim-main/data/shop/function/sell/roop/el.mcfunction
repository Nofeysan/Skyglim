#> shop:sell/roop/el
# 
# EL count
# 
# @output
# score:
#   $sell_el _: el の数
# 

# 移行
scoreboard players operation $sell_el _ = $total _

# 算出
scoreboard players operation $sell_el _ /= #4096 num
scoreboard players operation $total _ %= #4096 num
