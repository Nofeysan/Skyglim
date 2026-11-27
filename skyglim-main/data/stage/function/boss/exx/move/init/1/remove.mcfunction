#> stage:boss/exx/move/init/1/remove
# 
# 
# 
# 

# perform
    execute positioned 9295 153 -405 run particle minecraft:block{block_state: "minecraft:stone"} ~ ~ ~ 7 15 7 0.0 1200
    execute positioned 9295 153 -405 run particle minecraft:dust{color: 9630628, scale: 2.4} ~ ~ ~ 7 15 7 0 1200

    execute positioned 9295 153 -405 as @a[distance=..50] at @s run playsound minecraft:entity.generic.explode voice @s ~ ~ ~ 0.4 1.2

# field
    clone 9258 60 -442 9332 81 -368 9259 147 -441
