# 初期化
data remove storage km_solver: inputs

# 
# damage = (5 + dmg) * (100 + str) * CD * multiplier / 100
# D = dmg
# S = str
# C = CD
# M = multiplier

# 一般式を代入
data modify storage km_solver: inputs append value {f:{ div:[ {mul:[ {add:[{n:5.0f},{v:"D"}]}, {add:[{n:100.0f},{v:"S"}]}, {v:"C"}, {v:"M"} ]}, {n:100.0f} ] }}

# 値を代入
data modify storage km_solver: vars set value {D:5.0f, S:3.0f, C:1.0f, M:1.0f}

# 計算実行
execute at @p run function km_solver:solve


