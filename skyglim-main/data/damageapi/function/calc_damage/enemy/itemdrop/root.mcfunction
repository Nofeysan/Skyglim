#> damageapi:calc_damage/enemy/itemdrop/root
# 
# 付近にプレイヤーがいる → loot
# 
# 

# path を storage に収納する
data modify storage damageapi: loot.path set from entity @s data.status.loot

# loot する
function damageapi:calc_damage/enemy/itemdrop/macro_root with storage damageapi: loot
