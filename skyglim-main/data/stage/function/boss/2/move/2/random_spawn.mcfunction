#> stage:boss/1/move/4/random_spawn
# 
# random でスポーンさせる
# 
# 

# random
execute store result score _ _ run random value 0..1

# summon
execute if score _ _ matches 0 run function stage:boss/2/move/2/melee
execute if score _ _ matches 1 run function stage:boss/2/move/2/range

# sound
playsound minecraft:entity.wither.ambient voice @a ~ ~ ~ 0.3 1
particle minecraft:witch ~ ~ ~ 0.5 0.7 0.5 0.1 120
