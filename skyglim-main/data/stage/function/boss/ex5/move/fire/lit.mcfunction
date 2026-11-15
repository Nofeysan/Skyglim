#> stage:boss/ex5/move/fire/lit
# 
# 点灯
# 
# 

# block
    setblock ~ ~ ~ minecraft:soul_campfire[lit=true]

# perform
    playsound minecraft:item.firecharge.use voice @a ~ ~ ~ 0.4 1
    particle minecraft:dust{color: 14238306, scale: 2.4} ~ ~ ~ 0.7 0.7 0.7 0.06 120
