#> stage:boss/11/move/10/set_barrier
# 
# 
# 
# 

# perform
playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 0.4 1.6
particle minecraft:dust{color: 14718167, scale: 1.2} ~ ~ ~ 0.5 0.5 0.5 0.1 240

# summon
summon minecraft:marker ~ ~ ~ {Tags: ['gimmick', 'gimmick.barrier.set']}

# kill
kill @s
