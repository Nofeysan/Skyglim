#> stage:boss/4/move/1/select-up
# 
# 0: 上が正解 / 1: 真ん中が正解 / 2: 下が正解
# 
# 

# particle
    # 上
        #execute if score _ _ matches 0 positioned 9295 160 -405 run particle minecraft:dust{color: 12460370, scale: 4.0} ~ ~ ~ 9 2.2 9 0 640
        execute if score _ _ matches 1 positioned 9295 160 -405 run particle minecraft:dust{color: 12460370, scale: 4.0} ~ ~ ~ 9 2.2 9 0 640
        execute if score _ _ matches 2 positioned 9295 160 -405 run particle minecraft:dust{color: 12460370, scale: 4.0} ~ ~ ~ 9 2.2 9 0 640
        #execute if score _ _ matches 0 positioned 9295 160 -405 run particle minecraft:dust{color: 12460370, scale: 4.0} ~ ~ ~ 9 2.2 9 0 640
        execute if score _ _ matches 1 positioned 9295 160 -405 run particle minecraft:dust{color: 15357190, scale: 4.0} ~ ~ ~ 9 2.2 9 0 640
        execute if score _ _ matches 2 positioned 9295 160 -405 run particle minecraft:dust{color: 15357190, scale: 4.0} ~ ~ ~ 9 2.2 9 0 640

    # 真ん中
        execute if score _ _ matches 0 positioned 9295 154 -405 run particle minecraft:dust{color: 12460370, scale: 4.0} ~ ~ ~ 9 2.2 9 0 640
        #execute if score _ _ matches 1 positioned 9295 154 -405 run particle minecraft:dust{color: 12460370, scale: 4.0} ~ ~ ~ 9 2.2 9 0 640
        execute if score _ _ matches 2 positioned 9295 154 -405 run particle minecraft:dust{color: 12460370, scale: 4.0} ~ ~ ~ 9 2.2 9 0 640
        execute if score _ _ matches 0 positioned 9295 154 -405 run particle minecraft:dust{color: 15357190, scale: 4.0} ~ ~ ~ 9 2.2 9 0 640
        #execute if score _ _ matches 1 positioned 9295 154 -405 run particle minecraft:dust{color: 12460370, scale: 4.0} ~ ~ ~ 9 2.2 9 0 640
        execute if score _ _ matches 2 positioned 9295 154 -405 run particle minecraft:dust{color: 15357190, scale: 4.0} ~ ~ ~ 9 2.2 9 0 640

    # 下
        execute if score _ _ matches 0 positioned 9295 148 -405 run particle minecraft:dust{color: 12460370, scale: 4.0} ~ ~ ~ 9 2.2 9 0 640
        execute if score _ _ matches 1 positioned 9295 148 -405 run particle minecraft:dust{color: 12460370, scale: 4.0} ~ ~ ~ 9 2.2 9 0 640
        #execute if score _ _ matches 2 positioned 9295 148 -405 run particle minecraft:dust{color: 12460370, scale: 4.0} ~ ~ ~ 9 2.2 9 0 640
        execute if score _ _ matches 0 positioned 9295 148 -405 run particle minecraft:dust{color: 15357190, scale: 4.0} ~ ~ ~ 9 2.2 9 0 640
        execute if score _ _ matches 1 positioned 9295 148 -405 run particle minecraft:dust{color: 15357190, scale: 4.0} ~ ~ ~ 9 2.2 9 0 640
        #execute if score _ _ matches 2 positioned 9295 148 -405 run particle minecraft:dust{color: 12460370, scale: 4.0} ~ ~ ~ 9 2.2 9 0 640

# effect
    # 上
        #execute if score _ _ matches 0 positioned 9276.0 160.0 -424.0 positioned ~0.5 ~ ~0.5 run effect give @a[dx=38, dy=9, dz=38] minecraft:wind_charged 1 32
        execute if score _ _ matches 1 positioned 9276.0 160.0 -424.0 positioned ~0.5 ~ ~0.5 run effect give @a[dx=38, dy=9, dz=38] minecraft:wind_charged 1 32
        execute if score _ _ matches 2 positioned 9276.0 160.0 -424.0 positioned ~0.5 ~ ~0.5 run effect give @a[dx=38, dy=9, dz=38] minecraft:wind_charged 1 32

    # 真ん中
        execute if score _ _ matches 0 positioned 9276.0 154.0 -424.0 positioned ~0.5 ~ ~0.5 run effect give @a[dx=38, dy=4, dz=38] minecraft:wind_charged 1 32
        #execute if score _ _ matches 1 positioned 9276.0 154.0 -424.0 positioned ~0.5 ~ ~0.5 run effect give @a[dx=38, dy=9, dz=38] minecraft:wind_charged 1 32
        execute if score _ _ matches 2 positioned 9276.0 154.0 -424.0 positioned ~0.5 ~ ~0.5 run effect give @a[dx=38, dy=4, dz=38] minecraft:wind_charged 1 32

    # 下
        execute if score _ _ matches 0 positioned 9276.0 148.0 -424.0 positioned ~0.5 ~ ~0.5 run effect give @a[dx=38, dy=4, dz=38] minecraft:wind_charged 1 32
        execute if score _ _ matches 1 positioned 9276.0 148.0 -424.0 positioned ~0.5 ~ ~0.5 run effect give @a[dx=38, dy=4, dz=38] minecraft:wind_charged 1 32
        #execute if score _ _ matches 2 positioned 9276.0 148.0 -424.0 positioned ~0.5 ~ ~0.5 run effect give @a[dx=38, dy=9, dz=38] minecraft:wind_charged 1 32

# sound
    # 上
        execute if score _ _ matches 0 positioned 9276.0 160.0 -424.0 positioned ~0.5 ~ ~0.5 as @a[dx=38, dy=9, dz=38] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.5 1
        execute if score _ _ matches 1 positioned 9276.0 160.0 -424.0 positioned ~0.5 ~ ~0.5 as @a[dx=38, dy=9, dz=38] at @s run playsound minecraft:entity.wither.break_block voice @s ~ ~ ~ 0.5 1
        execute if score _ _ matches 2 positioned 9276.0 160.0 -424.0 positioned ~0.5 ~ ~0.5 as @a[dx=38, dy=9, dz=38] at @s run playsound minecraft:entity.wither.break_block voice @s ~ ~ ~ 0.5 1

    # 真ん中
        execute if score _ _ matches 0 positioned 9276.0 154.0 -424.0 positioned ~0.5 ~ ~0.5 as @a[dx=38, dy=4, dz=38] at @s run playsound minecraft:entity.wither.break_block voice @s ~ ~ ~ 0.5 1
        execute if score _ _ matches 1 positioned 9276.0 154.0 -424.0 positioned ~0.5 ~ ~0.5 as @a[dx=38, dy=4, dz=38] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.5 1
        execute if score _ _ matches 2 positioned 9276.0 154.0 -424.0 positioned ~0.5 ~ ~0.5 as @a[dx=38, dy=4, dz=38] at @s run playsound minecraft:entity.wither.break_block voice @s ~ ~ ~ 0.5 1

    # 下
        execute if score _ _ matches 0 positioned 9276.0 148.0 -424.0 positioned ~0.5 ~ ~0.5 as @a[dx=38, dy=4, dz=38] at @s run playsound minecraft:entity.wither.break_block voice @s ~ ~ ~ 0.5 1
        execute if score _ _ matches 1 positioned 9276.0 148.0 -424.0 positioned ~0.5 ~ ~0.5 as @a[dx=38, dy=4, dz=38] at @s run playsound minecraft:entity.wither.break_block voice @s ~ ~ ~ 0.5 1
        execute if score _ _ matches 2 positioned 9276.0 148.0 -424.0 positioned ~0.5 ~ ~0.5 as @a[dx=38, dy=4, dz=38] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.5 1

#\ +6
# 一番下; /execute positioned 9276.0 148.0 -424.0 positioned ~0.5 ~ ~0.5 if entity @s[dx=38, dy=4, dz=38]
# 真ん中; /execute positioned 9276.0 154.0 -424.0 positioned ~0.5 ~ ~0.5 if entity @s[dx=38, dy=4, dz=38]
# 一番上; /execute positioned 9276.0 160.0 -424.0 positioned ~0.5 ~ ~0.5 if entity @s[dx=38, dy=9, dz=38]
