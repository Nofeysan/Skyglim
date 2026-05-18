#> stage:reset/second
# 
# 入場中のステージにおいて、プレイヤーがいなければリセットを行う
# 
# 

# check
execute if score _ stage.1 matches 1.. positioned 9849 4 -8 unless entity @a[dx=102, dy=52, dz=139] run function stage:reset/stage/1
