#> shop:sell/roop/elb
# 
# ELB count
# 
# @output
# score:
#   $sell_elb _: elb の数
# 

# 移行
scoreboard players operation $sell_elb _ = $total _

# 算出
scoreboard players operation $sell_elb _ /= #262144 num
scoreboard players operation $total _ %= #262144 num
