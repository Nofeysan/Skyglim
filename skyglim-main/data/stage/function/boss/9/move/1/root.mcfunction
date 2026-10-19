#> stage:boss/1/move/1/root
# 
# 飛び上がってダメージ（割合 50%）
# 200 start
# 

# 200: 召喚
execute if score s7 BossMoves matches 200 run function stage:boss/7/move/1/summon
execute if score s7 BossMoves matches 204 run kill @e[type=minecraft:spawner_minecart, tag=gimmick.spawn, distance=..100]

# 220, 240, 260: countdown
execute if score s7 BossMoves matches 220 run function stage:boss/7/move/1/count-3
execute if score s7 BossMoves matches 240 run function stage:boss/7/move/1/count-2
execute if score s7 BossMoves matches 260 run function stage:boss/7/move/1/count-1

# 280: bomb
execute if score s7 BossMoves matches 280 run function stage:boss/7/move/1/bomb

# AoE (200~ 20tick おき)
execute if score s7 BossMoves matches 200 as @a[distance=..35] at @s positioned ~ 0 ~ run function entity:aec_manager/summon/.square {r: 13, t: 80, dmg: 16, str: 18, id: 71}
execute if score s7 BossMoves matches 220 as @a[distance=..35] at @s positioned ~ 0 ~ run function entity:aec_manager/summon/.square {r: 13, t: 80, dmg: 16, str: 18, id: 71}
execute if score s7 BossMoves matches 240 as @a[distance=..35] at @s positioned ~ 0 ~ run function entity:aec_manager/summon/.square {r: 13, t: 80, dmg: 16, str: 18, id: 71}
execute if score s7 BossMoves matches 260 as @a[distance=..35] at @s positioned ~ 0 ~ run function entity:aec_manager/summon/.square {r: 13, t: 80, dmg: 16, str: 18, id: 71}

# reset
execute if score s7 BossMoves matches 280.. run scoreboard players set s7 BossMoves 60
