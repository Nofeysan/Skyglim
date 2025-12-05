# 一旦アイテムなくす
data modify block ~ ~ ~ Items set value []

# 演出
#function crafting:craft/perform
playsound minecraft:block.anvil.use voice @a[distance=..15] ~ ~ ~ 0.5 2
particle minecraft:sweep_attack ~ ~ ~ 0.7 0.7 0.7 0.05 80
playsound minecraft:entity.breeze.shoot voice @a[distance=..15] ~ ~ ~ 1 1

# 完成品
loot replace block ~ ~ ~ container.4 loot crafting:ingredients/crystal/e-wind

