##> damageapi:calc_damage/macro/when_death
##* 
##* 付近にプレイヤーがいる → loot
##* 
##* 

# path を storage に収納する
$data modify storage damageapi: loot.path set from storage enemy: list.$(uuid).data.status.loot

# loot する
function damageapi:calc_damage/enemy/itemdrop/macro_root with storage damageapi: loot
