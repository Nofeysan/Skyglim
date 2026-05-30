#> stage:boss/2/move/4/particle-line
# 
# 直線状に particle
# 
# @input
# <score>
#   $count _: 実行回数

# remove
scoreboard players remove $count _ 1

# particle
particle minecraft:end_rod ~ ~ ~ 0.0 0.0 0.0 0 1 force @a

# return
execute if score $count _ matches 0.. positioned ^ ^ ^1 run function stage:boss/2/move/4/particle-line
