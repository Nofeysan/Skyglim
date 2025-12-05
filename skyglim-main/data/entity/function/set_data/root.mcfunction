##> entity/tick
##* 
##* req_data がついてる entity に実行 (as @s)
##* 
##* 

# タグとる
tag @s remove req_setdata

# tag を取得して macro で実行
data modify storage enemy: temp.id set from entity @s Tags[0]
function entity:set_data/macro/root with storage enemy: temp
