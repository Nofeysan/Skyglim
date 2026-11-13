#> stage:boss/6/move/2/root
# 
# スポナーからランダムに浮かせてAoE
# 
# 

# AoE + sword
    execute if score s11 BossMoves matches 200 as @a[distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.4 2
    execute if score s11 BossMoves matches 200 at @a[distance=..30] run function entity:aec_manager/summon/.cyl {r: 19, t: 60, dmg: 48, str: 56, id: 111}
    execute at @a[distance=..30] positioned ~ ~5 ~ run function stage:boss/11/move/2/summon_sword

# 落下とかは全部剣側で別で動きます

# reset
execute if score s11 BossMoves matches 260.. run scoreboard players set s11 BossMoves 100
