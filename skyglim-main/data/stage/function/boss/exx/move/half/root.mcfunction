#> stage:boss/exx/move/half/root
# 
# 7カウントに合わせて 雷審判 と 上下移動 (10 tick ずらし)
# 25tick*7 = 175tick (8.75s)
# 
# エリアは広めにしようかしらね (r=8?)
# 

#+ 上下移動
# 200: 足場召喚
    execute if score exx BossMoves matches 200 run function stage:boss/exx/move/half/set

# 予告
    execute if score exx BossMoves matches 200 run function stage:boss/exx/move/half/select

# 上下移動
    execute if score exx BossMoves matches 300 as @a[distance=..80] run function stage:boss/exx/move/half/damage-1
    execute if score exx BossMoves matches 300 as @a[distance=..80] run function stage:boss/exx/move/half/damage-2
    execute if score exx BossMoves matches 300 as @a[distance=..80] run function stage:boss/exx/move/half/damage-3
    execute if score exx BossMoves matches 300 as @a[distance=..80] run function stage:boss/exx/move/half/damage-4
    execute if score exx BossMoves matches 300 as @a[distance=..80] run function stage:boss/exx/move/half/damage-5
    execute if score exx BossMoves matches 300 as @a[distance=..80] run function stage:boss/exx/move/half/damage-6
    execute if score exx BossMoves matches 300 as @a[distance=..80] run function stage:boss/exx/move/half/damage-7

# 足場 reset
    execute if score exx BossMoves matches 680 run function stage:boss/exx/move/half/remove

#% 雷審判
