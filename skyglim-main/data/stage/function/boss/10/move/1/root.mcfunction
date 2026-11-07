#> stage:boss/1/move/1/root
# 
# 1x1 に召喚
# 200 → 260, 300, 360
# 

# boss tp
execute if score s10 BossMoves matches 200..400 run tp @n[tag=boss, tag=s10] 10148.0 11 -339.0

# 200: 召喚
# 50% 以上（13, 14, 14）
execute if score s10 BossMoves matches 200 unless score $s10.boss.half _ matches 1 at @e[tag=1x1, sort=random, limit=12] run function entity:aec_manager/summon/.square {r: 5, t: 60, dmg: 48, str: 56, id: 101}
execute if score s10 BossMoves matches 200 unless score $s10.boss.half _ matches 1 at @e[tag=1x1, sort=random, limit=13] run function entity:aec_manager/summon/.square {r: 5, t: 100, dmg: 48, str: 56, id: 101}
execute if score s10 BossMoves matches 200 unless score $s10.boss.half _ matches 1 at @e[tag=1x1, sort=random, limit=14] run function entity:aec_manager/summon/.square {r: 5, t: 140, dmg: 48, str: 56, id: 101}

# 50% 以下 (14, 14, 15)
execute if score s10 BossMoves matches 200 if score $s10.boss.half _ matches 1 at @e[tag=1x1, sort=random, limit=14] run function entity:aec_manager/summon/.square {r: 5, t: 60, dmg: 48, str: 56, id: 101}
execute if score s10 BossMoves matches 200 if score $s10.boss.half _ matches 1 at @e[tag=1x1, sort=random, limit=14] run function entity:aec_manager/summon/.square {r: 5, t: 100, dmg: 48, str: 56, id: 101}
execute if score s10 BossMoves matches 200 if score $s10.boss.half _ matches 1 at @e[tag=1x1, sort=random, limit=15] run function entity:aec_manager/summon/.square {r: 5, t: 160, dmg: 48, str: 56, id: 101}

# reset
execute if score s10 BossMoves matches 361.. run scoreboard players set s10 BossMoves 60
