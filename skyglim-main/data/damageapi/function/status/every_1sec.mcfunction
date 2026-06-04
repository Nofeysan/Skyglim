#> damageapi:status/every_1sec
# 
# second 処理
# 
# 

# 回復処理
execute as @a run function damageapi:status/player/natural_regen

# 地面に着いた矢を消す
kill @e[type=minecraft:arrow, predicate=entity:is_in_ground]

# forceload
forceload add 0 0 0 0

# 村人処理
execute at @a if entity @e[type=minecraft:villager, distance=..10] as @e[type=minecraft:villager, distance=..10] run data modify entity @s Offers set value {}

# stage
function stage:reset/second

# スコアリセット
scoreboard players set _ Timer 0
