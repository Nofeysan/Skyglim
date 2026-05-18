#> damageapi:status/every_1sec
# 
# second 処理
# 
# 

# 回復処理
execute as @a run function damageapi:status/player/natural_regen

# 地面に着いた矢を消す
kill @e[type=minecraft:arrow, predicate=entity:is_in_ground]

# stage
function stage:reset/second

# スコアリセット
scoreboard players set _ Timer 0
