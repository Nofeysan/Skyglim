#> entity:set_data/root
# 
# hero_of_the_village がついてる entity に実行 (as @s at @s)
# 
# 

# リセット
data remove storage km_solver: inputs
data remove storage km_solver: vars

# 一般式を代入
# Player: P, Health: H
# H * (1 + (P-1)*0.5)
data modify storage km_solver: inputs append value {f:{mul: [{v: "H"}, {add: [{n: 1.0f}, {mul: [{sub: [{v: "P"}, {n: 1.0f}]}, {n: 0.5f}]}]}]}}

# 初期値設定
data modify storage km_solver: vars set value {P: 1.0f, H:0.0f}

# プレイヤー数を取得
execute store result storage km_solver: vars.P float 1 if entity @a

# 体力保存
data modify storage km_solver: vars.H set from entity @s data.status.max_hp

# 実行
execute at @p run function km_solver:solve

# オーバーフロー対策
execute store result score _ _ run data get storage km_solver: outputs[0]
execute if score _ _ matches ..-1 run data modify storage km_solver: outputs[0] set value 2147000000

# max_hp, current_hp に再代入
data modify entity @s data.status.max_hp set from storage km_solver: outputs[0]
data modify entity @s data.status.current_hp set from storage km_solver: outputs[0]

# effect clear
effect clear @s minecraft:hero_of_the_village
