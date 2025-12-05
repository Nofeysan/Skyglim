###* $(uuid) でデータを取得する
$execute store result storage analyze: data.maxhp int 0.01 run data get storage enemy: list.$(uuid).data.status.max_hp
$execute store result storage analyze: data.curhp int 0.01 run data get storage enemy: list.$(uuid).data.status.current_hp

$data modify storage analyze: data.lore1 set from storage enemy: list.$(uuid).data.status.lore1
$data modify storage analyze: data.lore2 set from storage enemy: list.$(uuid).data.status.lore2

$data modify storage analyze: data.name set from storage enemy: list.$(uuid).data.status.name

# 実行！
function damageapi:analyze/act/macro/tell with storage analyze: data
