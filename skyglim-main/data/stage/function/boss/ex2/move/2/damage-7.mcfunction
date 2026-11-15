#> stage:boss/4/move/1/damage
# 
# 上下判定してダメージ与える
# 
# 

# damage
scoreboard players operation _ _ = $7 s4.updown
function stage:boss/ex2/move/2/damage-updown
