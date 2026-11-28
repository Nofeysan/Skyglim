#> stage:boss/exx/move/init/root
# 
# 200..
# まずは大別する
# 

# tp
    tp @n[tag=boss, tag=exx] 9295 148 -405
    scoreboard players set $cant_damage _ 1

# 1: 上下移動（3層）+ AoE to AEC
    execute if score exx BossMoves matches 200..700 run function stage:boss/exx/move/init/1/root

# 2: 全方向射撃（2周） + 爆弾召喚（スポナー・Break to AoE）
    execute if score exx BossMoves matches 700..1000 run function stage:boss/exx/move/init/2/root

# 3: 雷審判 + ポーション蝙蝠
    execute if score exx BossMoves matches 960..1580 run function stage:boss/exx/move/init/3/root

# reset
    execute if score exx BossMoves matches 1600.. run scoreboard players set $cant_damage _ 0
    execute if score exx BossMoves matches 1600.. run scoreboard players set exx BossMoves 100
