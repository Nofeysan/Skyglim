#> stage:boss/ex5/move/fire/extinguish
# 
# 消火する
# 
# 

# block
    setblock ~ ~ ~ minecraft:soul_campfire[lit=false]

# kill
    kill @n[tag=ex5.campfire.boss, type=minecraft:armor_stand]

# perform
    playsound minecraft:block.fire.extinguish voice @a ~ ~ ~ 0.4 1
    particle minecraft:smoke ~ ~ ~ 0.7 0.7 0.7 0.06 120

# tag remove
    tag @s remove now.lit
