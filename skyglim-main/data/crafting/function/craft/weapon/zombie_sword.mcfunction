# 一旦アイテムなくす
data modify block ~ ~ ~ Items set value []

# 演出
function crafting:craft/perform
playsound minecraft:block.anvil.use voice @a[distance=..15] ~ ~ ~ 0.5 0.5

# 完成品
loot replace block ~ ~ ~ container.4 loot modify:items/not_restored/debug-sword

