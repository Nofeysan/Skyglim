# 一旦アイテムなくす
data modify block ~ ~ ~ Items set value []

# 演出
#function crafting:craft/perform
playsound minecraft:block.anvil.use voice @a[distance=..15] ~ ~ ~ 0.5 2
particle minecraft:witch ~ ~ ~ 0.7 0.7 0.7 0.05 180
playsound minecraft:entity.breeze.deflect voice @a[distance=..15] ~ ~ ~ 1.5 0.5

# 完成品
loot replace block ~ ~ ~ container.4 loot crafting:ingredients/crystal/e-dark

