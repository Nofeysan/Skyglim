#> stage:boss/1/move/4/random_spawn
# 
# random でスポーンさせる
# 
# 

# random
execute store result score _ _ run random value 0..2

# summon
execute if score _ _ matches 0 run function stage:boss/1/move/4/swift
execute if score _ _ matches 1 run function stage:boss/1/move/4/strong
execute if score _ _ matches 2 run function stage:boss/1/move/4/long
