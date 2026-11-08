#> stage:boss/1/tick
# 
# boss 中常に実行するコマンド群
# 
# 

# data get
data modify storage boss: stage.10 set from entity @n[tag=boss, tag=s10] data

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
        data modify storage km_solver: vars.C set from storage boss: stage.10.status.current_hp
        data modify storage km_solver: vars.M set from storage boss: stage.10.status.max_hp

    # 実行
        execute at @p run function km_solver:solve
    
    # 割合取得
        execute store result score $s10.boss.rate _ run data get storage km_solver: outputs[0]

    # 半分取得
        execute unless score $s10.boss.half _ matches 1 if score $s10.boss.rate _ matches ..50 as @n[tag=boss, tag=s10] at @s run function stage:boss/10/half

#

# HP 表示
execute store result bossbar minecraft:stage10.boss max run data get storage boss: stage.10.status.max_hp
execute store result bossbar minecraft:stage10.boss value run data get storage boss: stage.10.status.current_hp

# 行動
scoreboard players add s10 BossMoves 1
execute if score s10 BossMoves matches 200 at @n[tag=boss, tag=s10] run function stage:boss/10/move/root
execute if score s10 BossMoves matches 200.. if score s10-type BossMoves matches 1 at @n[tag=boss, tag=s10] run function stage:boss/10/move/1/root
execute if score s10 BossMoves matches 200.. if score s10-type BossMoves matches 2 at @n[tag=boss, tag=s10] run function stage:boss/10/move/2/root
execute if score s10 BossMoves matches 200.. if score s10-type BossMoves matches 3 as @n[tag=boss, tag=s10] at @s run function stage:boss/10/move/3/root
execute if score s10 BossMoves matches 200.. if score s10-type BossMoves matches 10 as @n[tag=boss, tag=s10] at @s run function stage:boss/10/move/10/root

#* 
#* [1x1]
#*  1  2  3  4
#*  5  6  7  8
#*  9 10 11 12
#* 13 14 15 16
#* 
#* [2x2] 
#* 21 -- 22 --
#* -- -- -- --
#* 23 -- 24 --
#* -- -- -- --
#* 
#* Tags; 'gimmick.s10.aoe', '<id>', '1x1' or '2x2'
#* 
