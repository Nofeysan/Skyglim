#> stage:boss/1/move/4/random_spawn
# 
# random でスポーンさせる
# 
# 

# 一定数居たら召喚しない
    # 数を取得
    execute store result score $enemy_count _ if entity @e[tag= gimmick.enemy.s4, distance=..30, predicate=entity:entity_enemy]

    # 人数 x2 +2 まで
    execute if score $players _ matches 1 if score $enemy_count _ matches 4.. run return fail
    execute if score $players _ matches 2 if score $enemy_count _ matches 6.. run return fail
    execute if score $players _ matches 3 if score $enemy_count _ matches 8.. run return fail
    execute if score $players _ matches 4.. if score $enemy_count _ matches 10.. run return fail

# random
execute store result score _ _ run random value 0..1

# summon
execute if score _ _ matches 0 run function stage:boss/4/move/4/melee
execute if score _ _ matches 1 run function stage:boss/4/move/4/range

# sound
playsound minecraft:entity.wither.ambient voice @a ~ ~ ~ 0.3 1
particle minecraft:witch ~ ~ ~ 0.5 0.7 0.5 0.1 120
