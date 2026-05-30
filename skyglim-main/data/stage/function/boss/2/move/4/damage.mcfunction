#> stage:boss/2/move/4/damage
# 
# 範囲内のプレイヤーにダメージ
# 
# 

# particle
particle minecraft:dust{color: [0.745098039215686, 0.129411764705882, 0.32156862745098], scale: 1.6} ~ ~ ~ 0.0 0.0 0.0 0 2 force @a

# 範囲内にプレイヤーがいるとき
execute if entity @a[tag=!s2-damaged, distance=..2] run effect give @a[tag=!s2-damaged, distance=..2] minecraft:wind_charged 1 60
execute if entity @a[tag=!s2-damaged, distance=..2] run tag @a[tag=!s2-damaged, distance=..2] add s2-damaged
