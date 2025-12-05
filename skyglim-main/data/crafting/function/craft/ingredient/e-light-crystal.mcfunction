# 一旦アイテムなくす
data modify block ~ ~ ~ Items set value []

# 演出
#function crafting:craft/perform
playsound minecraft:block.anvil.use voice @a[distance=..15] ~ ~ ~ 0.5 2
particle minecraft:wax_off ~ ~ ~ 0.7 0.7 0.7 0.5 180
playsound minecraft:item.trident.thunder voice @a[distance=..15] ~ ~ ~ 0.75 2

# 完成品
loot replace block ~ ~ ~ container.4 loot crafting:ingredients/crystal/e-light

