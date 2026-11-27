#> stage:boss/exx/move/init/1/set
# 
# 
# 
# 

# perform
    execute positioned 9295 153 -405 run particle minecraft:block{block_state: "minecraft:stone"} ~ ~ ~ 7 15 7 0.0 1200
    execute positioned 9295 153 -405 run particle minecraft:dust{color: 9630628, scale: 2.4} ~ ~ ~ 7 15 7 0 1200

    execute positioned 9295 153 -405 as @a[distance=..50] at @s run playsound minecraft:block.anvil.use voice @s ~ ~ ~ 0.2 1.2
    execute positioned 9295 153 -405 as @a[distance=..50] at @s run playsound minecraft:block.anvil.use voice @s ~ ~ ~ 0.2 1.6

# filed
    clone 9258 36 -442 9332 57 -368 9259 147 -441
