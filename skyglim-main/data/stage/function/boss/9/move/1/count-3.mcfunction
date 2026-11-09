#> stage:boss/2/move/5/summon
# 
# tnt 召喚
# 
# 

# team
team join bomb.3 @e[distance=..30, tag=gimmick.tnt]

# sound
playsound minecraft:block.iron_trapdoor.open voice @a ~ ~ ~ 1.5 1

# AoE
execute as @e[distance=..30, tag=gimmick.tnt] at @s positioned ~ ~ ~ run function entity:aec_manager/summon/.cyl {r: 4, t: 60, dmg: 16, str: 18, id: 91}
