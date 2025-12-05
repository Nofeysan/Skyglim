# 釣り竿 Tier-II
execute if data block ~ ~ ~ {Items:[{Slot:2b, components:{"minecraft:repair_cost": 70000}, count:1},{Slot:4b, components:{"minecraft:repair_cost": 70000}, count:1},{Slot:5b, components:{"minecraft:repair_cost": 72002}, count:1},{Slot:6b, components:{"minecraft:repair_cost": 70000}, count:1},{Slot:8b, components:{"minecraft:repair_cost": 70100}, count:32}]} run return run function crafting:craft/fishing/tier-2

# どれにも一致しないなら失敗処理
function crafting:fail
