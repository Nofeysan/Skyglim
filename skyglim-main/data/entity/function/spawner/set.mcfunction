#> entity:spawner/set_2
# 
# {xyz: "<x> <y> <z>", id: "<id>", block: "<block_id>"} で実行する
# id: entity:spawner/ 以下 (e.g. debug/test)
# 
# e.g.) function entity:spawner/set_2 {xyz: "", id: "stage/1/11", block: "iron_block"}
# 

$execute positioned $(xyz) run function entity:spawner/$(id) {block: "$(block)"}
