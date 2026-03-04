#> entity:aec_manager/transport/root
# 
# tag 付きのやつを変化させる
# 
# 

# 1tick 遅延させる
scoreboard players add @s BeforeTrans 1
execute unless score @s BeforeTrans matches 2.. run return fail

#* 変化させる
# data 取得
# {r: <radius>, half_r: <radius>/2, t: <tick>, dmg: <damage>, str: <strength>}
data modify storage enemy: aec.list set from entity @s data

# macro で変更
function entity:aec_manager/transport/modify with storage enemy: aec.list

tag @s remove req_trans
