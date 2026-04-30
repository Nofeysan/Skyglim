#> item:currency/cur/l
# 
# ラピスラズリを召喚
# 
# @input
#   l, lb, el, elb: 通貨の量、0~64 [int]
#   pos: 召喚する座標
# 

# まず召喚
$loot spawn $(pos) loot item:currency/el

# 数を変更
$execute positioned $(pos) run data modify entity @n[type=minecraft:item, nbt={Item: {components: {"minecraft:repair_cost": 1003}}}] Item.count set value $(el)
