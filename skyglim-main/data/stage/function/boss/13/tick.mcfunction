#> stage:boss/1/tick
# 
# boss 中常に実行するコマンド群
# 
# 

# data get
    data modify storage boss: stage.13 set from entity @n[tag=boss, tag=s13] data

#* 割合取得
    # 初期化
        data remove storage km_solver: inputs
        data remove storage km_solver: vars


    # 計算; 割合を小数第2位まで
    # rate = C / M * 100
    # C = 現在の体力
    # M = 最大体力

    # 式・初期値
        data modify storage km_solver: inputs append value {f: {mul: [{div: [{v: "C"}, {v: "M"}]}, {n: 100.0f}]} }
        data modify storage km_solver: vars set value {C: 1.0f, M: 1.0f}

    # 変数代入
        data modify storage km_solver: vars.C set from storage boss: stage.13.status.current_hp
        data modify storage km_solver: vars.M set from storage boss: stage.13.status.max_hp

    # 実行
        execute at @p run function km_solver:solve

    # 割合取得
        execute store result score $s13.boss.rate _ run data get storage km_solver: outputs[0]

    # 半分取得
        execute if score s13 BossMoves matches ..199 unless score $s13.boss.half _ matches 1 if score $s13.boss.rate _ matches ..50 as @n[tag=boss, tag=s13] at @s run function stage:boss/13/half

#

# HP 表示
execute store result bossbar minecraft:stage13.boss max run data get storage boss: stage.13.status.max_hp
execute store result bossbar minecraft:stage13.boss value run data get storage boss: stage.13.status.current_hp

# 行動
scoreboard players add s13 BossMoves 1
execute if score s13 BossMoves matches 200 as @n[tag=boss, tag=s13] at @s run function stage:boss/13/move/root
execute if score s13 BossMoves matches 200.. if score s13-type BossMoves matches 1 as @n[tag=boss, tag=s13] at @s run function stage:boss/13/move/1/root
execute if score s13 BossMoves matches 200.. if score s13-type BossMoves matches 2 as @n[tag=boss, tag=s13] at @s run function stage:boss/13/move/2/root
execute if score s13 BossMoves matches 200.. if score s13-type BossMoves matches 3 as @n[tag=boss, tag=s13] at @s run function stage:boss/13/move/3/root
execute if score s13 BossMoves matches 200.. if score s13-type BossMoves matches 6 as @n[tag=boss, tag=s13] at @s run function stage:boss/13/move/6/root

