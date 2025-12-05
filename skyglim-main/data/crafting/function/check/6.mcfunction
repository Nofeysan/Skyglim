# 合成クリスタル
execute if data block ~ ~ ~ {Items:[{Slot:1b, components:{"minecraft:repair_cost": 70700}, count:16},{Slot:3b, components:{"minecraft:repair_cost": 70701}, count:16},{Slot:5b, components:{"minecraft:repair_cost": 70702}, count:16},{Slot:6b, components:{"minecraft:repair_cost": 70703}, count:16},{Slot:7b, components:{"minecraft:repair_cost": 1002}, count:4},{Slot:8b, components:{"minecraft:repair_cost": 70704}, count:16}]} run return run function crafting:craft/ingredient/crystal-all
execute if data block ~ ~ ~ {Items:[{Slot:1b, components:{"minecraft:repair_cost": 70710}, count:16},{Slot:3b, components:{"minecraft:repair_cost": 70711}, count:16},{Slot:5b, components:{"minecraft:repair_cost": 70712}, count:16},{Slot:6b, components:{"minecraft:repair_cost": 70713}, count:16},{Slot:7b, components:{"minecraft:repair_cost": 1004}, count:4},{Slot:8b, components:{"minecraft:repair_cost": 70714}, count:16}]} run return run function crafting:craft/ingredient/e-crystal-all

# どれにも一致しないなら失敗処理
function crafting:fail
