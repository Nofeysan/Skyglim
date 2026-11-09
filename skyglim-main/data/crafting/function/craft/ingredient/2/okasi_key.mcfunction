# 一旦アイテムなくす
data modify block ~ ~ ~ Items set value []

# 演出
function crafting:craft/perform

# 完成品
loot replace block ~ ~ ~ container.4 loot stage:importants/5-6/key
