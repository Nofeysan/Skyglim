#> entity:spawner/set
# 
# {"xyz": "<x> <y> <z>", "id": "<id>"} で実行する
# id: entity:spawner/ 以下 (e.g. debug/test)
# 

$execute positioned $(xyz) run function entity:spawner/$(id)
