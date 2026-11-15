#> stage:boss/6/move/2/root
# 
# 反↓復→横→跳↑び↓
# 
# 

# creeper
    execute if score s13 BossMoves matches 200..240 as @a[distance=..80] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.3 2
    execute if score s13 BossMoves matches 200 at @a[distance=..80] run summon minecraft:creeper ~ ~ ~ {Fuse: 40, ignited: true, Invulnerable: true}
    execute if score s13 BossMoves matches 200 run summon minecraft:creeper ~ ~ ~ {Fuse: 40, ignited: true, Invulnerable: true, powered: true}

# reset
    execute if score s13 BossMoves matches 280.. run scoreboard players set s13 BossMoves 100
