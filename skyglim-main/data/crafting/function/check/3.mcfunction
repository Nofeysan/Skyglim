# ゾンビの剣
execute if data block ~ ~ ~ {Items:[{Slot:1b, components:{"minecraft:repair_cost": 72000}, count:1},{Slot:4b, components:{"minecraft:repair_cost": 72000}, count:1},{Slot:7b, components:{"minecraft:repair_cost": 70000}, count:1}]} run return run function crafting:craft/weapon/zombie_sword

# どれにも一致しないなら失敗処理
function crafting:fail
