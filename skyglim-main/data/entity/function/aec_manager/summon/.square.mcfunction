#> entity:aec_manager/summon/.square
# 
# 
# 
# 

# data セット
# {r: <radius>, t: <tick>, dmg: <damage>, str: <strength>}
$data modify storage enemy: aec.list set value {r: $(r), t: $(t), dmg: $(dmg), str: $(str)}

# radius 調整
execute store result score _ _ run data get storage enemy: aec.list.r 100
execute store result storage enemy: aec.list.half_r float 0.01 run scoreboard players operation _ _ /= #2 num

# armor_stand 用 tick 調整
execute store result score _ _ run data get storage enemy: aec.list.t
execute store result storage enemy: aec.list.t_2 float 1 run scoreboard players operation _ _ += #2 num

# macro で実行
function entity:aec_manager/summon/macro_square with storage enemy: aec.list
