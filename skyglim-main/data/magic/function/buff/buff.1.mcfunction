#> magic:buff/buff.1
# 
# 魔法攻撃バフ
# 
# 

# decrement
scoreboard players remove @s magic.buff.1 1

# particle
execute at @s run particle minecraft:dust{color: [0.454901960784314, 0.415686274509804, 0.674509803921569], scale: 1.2} ~ ~2 ~ 0.3 0.1 0.3 0 2
