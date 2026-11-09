#> stage:boss/9/move/1/root
# 
# tnt 召喚 → AoE
# 
# 

# 200: 召喚
execute if score s9 BossMoves matches 200 run function stage:boss/9/move/1/summon
execute if score s9 BossMoves matches 204 run kill @e[type=minecraft:spawner_minecart, tag=gimmick.spawn, distance=..100]

# 220, 240, 260: countdown
execute if score s9 BossMoves matches 220 if score $s9.boss.half _ matches 0 run function stage:boss/9/move/1/count-3
execute if score s9 BossMoves matches 220 if score $s9.boss.half _ matches 1 run function stage:boss/9/move/1/count-3-half
execute if score s9 BossMoves matches 240 run function stage:boss/9/move/1/count-2
execute if score s9 BossMoves matches 260 run function stage:boss/9/move/1/count-1

# 280: bomb
execute if score s9 BossMoves matches 280 run function stage:boss/9/move/1/bomb

# reset
execute if score s9 BossMoves matches 280.. run scoreboard players set s9 BossMoves 60
