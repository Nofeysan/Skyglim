#> stage:boss/1/tick
# 
# boss 中常に実行するコマンド群
# 
# 

# data get
    data modify storage boss: stage.9 set from entity @n[predicate=entity:entity_enemy, tag=boss, tag=s9] data

# HP 表示
    execute store result bossbar minecraft:stage9.boss max run data get storage boss: stage.9.status.max_hp
    execute store result bossbar minecraft:stage9.boss value run data get storage boss: stage.9.status.current_hp

#* 割合取得
    # 初期化
        data remove storage km_solver: inputs
        data remove storage km_solver: vars


    # 計算; 割合を小数第2位まで
    # rate = C / M * 100
    # C = 現在の体力
    # M = 最大体力

    # 式・初期値
        data modify storage km_solver: inputs append value {f:{mul: [{div: [{v: "C"}, {v: "M"}]}, {n: 100.0f}]}}
        data modify storage km_solver: vars set value {C: 1.0f, M: 1.0f}

    # 変数代入
        data modify storage km_solver: vars.C set from storage boss: stage.9.status.current_hp
        data modify storage km_solver: vars.M set from storage boss: stage.9.status.max_hp

    # 実行
        execute at @s run function km_solver:solve
    
    # 割合取得
        execute store result score $s9.boss.rate _ run data get storage km_solver: outputs[0]

    # 半分取得
        execute unless score $s9.boss.half _ matches 1 if score $s9.boss.rate _ matches ..50 run function stage:boss/9/half

#

# 行動
    # increment
        scoreboard players add s9 BossMoves 1
    
    # 複数ティックにまたがる行動
        execute if score s9 BossMoves matches 200 at @n[predicate=entity:entity_enemy, tag=boss, tag=s9] run function stage:boss/9/move/root
        execute if score s9 BossMoves matches 200.. if score s9-type BossMoves matches 1 at @n[predicate=entity:entity_enemy, tag=boss, tag=s9] run function stage:boss/9/move/1/root
        execute if score s9 BossMoves matches 200.. if score s9-type BossMoves matches 2 at @n[predicate=entity:entity_enemy, tag=boss, tag=s9] run function stage:boss/9/move/2/root
        execute if score s9 BossMoves matches 200.. if score s9-type BossMoves matches 3 as @n[predicate=entity:entity_enemy, tag=boss, tag=s9] at @s run function stage:boss/9/move/3/root
