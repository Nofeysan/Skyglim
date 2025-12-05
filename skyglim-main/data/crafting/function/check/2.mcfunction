# Enchantment 圧縮
#execute if data block ~ ~ ~ {Items:[{Slot:0b, components:{"minecraft:repair_cost": 71000}, count:8},{Slot:1b, components:{"minecraft:repair_cost": 71000}, count:8},{Slot:2b, components:{"minecraft:repair_cost": 71000}, count:8},{Slot:3b, components:{"minecraft:repair_cost": 71000}, count:8},{Slot:5b, components:{"minecraft:repair_cost": 71000}, count:8},{Slot:6b, components:{"minecraft:repair_cost": 71000}, count:8},{Slot:7b, components:{"minecraft:repair_cost": 71000}, count:8},{Slot:8b, components:{"minecraft:repair_cost": 71000}, count:8}]} run return run function crafting:craft/ingredient/e-rotten_flesh

# どれにも一致しないなら失敗処理
function crafting:fail
