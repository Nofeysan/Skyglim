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
particle minecraft:dust{color: 3301326, scale: 1.2} ~ ~ ~ 0.0 0.0 0.0 0 1 force @a

# return
execute if score $count _ matches 0.. positioned ^ ^ ^1 run function stage:boss/ex3/move/3/no_half/particle-line_2
