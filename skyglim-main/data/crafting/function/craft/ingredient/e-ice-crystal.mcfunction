# 一旦アイテムなくす
data modify block ~ ~ ~ Items set value []

# 演出
#function crafting:craft/perform
playsound minecraft:block.anvil.use voice @a[distance=..15] ~ ~ ~ 0.5 2
particle minecraft:block{block_state:{Name:"minecraft:ice"}} ~ ~ ~ 0.7 0.7 0.7 0.05 140
playsound minecraft:block.glass.break voice @a[distance=..15] ~ ~ ~ 1 2

# 完成品
loot replace block ~ ~ ~ container.4 loot crafting:ingredients/crystal/e-ice

