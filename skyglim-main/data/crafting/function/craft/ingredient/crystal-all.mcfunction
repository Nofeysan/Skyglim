# 一旦アイテムなくす
data modify block ~ ~ ~ Items set value []

# 演出
#function crafting:craft/perform
playsound minecraft:block.anvil.use voice @a[distance=..15] ~ ~ ~ 0.5 2
playsound minecraft:entity.lightning_bolt.thunder voice @a[distance=..15] ~ ~ ~ 0.5 1
particle minecraft:dragon_breath ~ ~ ~ 0.7 0.7 0.7 0.1 180

# 完成品
loot replace block ~ ~ ~ container.4 loot crafting:ingredients/crystal/all

