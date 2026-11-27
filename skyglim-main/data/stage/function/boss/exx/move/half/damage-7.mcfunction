#> stage:boss/4/move/1/damage
# 
# 上下判定してダメージ与える
# 
# 

# damage
scoreboard players operation _ _ = $7 exx.updown
function stage:boss/exx/move/half/damage-updown
