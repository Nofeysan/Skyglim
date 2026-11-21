#> crafting:check/7
# 
# 0 1 2
# 3 4 5
# 6 7 8
# 

# Enchantment 圧縮
#execute if data block ~ ~ ~ {Items:[{Slot:0b, components:{"minecraft:repair_cost": 71000}, count:8},{Slot:1b, components:{"minecraft:repair_cost": 71000}, count:8},{Slot:2b, components:{"minecraft:repair_cost": 71000}, count:8},{Slot:3b, components:{"minecraft:repair_cost": 71000}, count:8},{Slot:5b, components:{"minecraft:repair_cost": 71000}, count:8},{Slot:6b, components:{"minecraft:repair_cost": 71000}, count:8},{Slot:7b, components:{"minecraft:repair_cost": 71000}, count:8},{Slot:8b, components:{"minecraft:repair_cost": 71000}, count:8}]} run return run function crafting:craft/ingredient/e-rotten_flesh

# ルートキー
execute if data block ~ ~ ~ {Items: \
    [\
        \
        {Slot: 1b, components: {"minecraft:repair_cost": 70204}, count: 2},\
        \
        {Slot: 3b, components: {"minecraft:repair_cost": 310001}, count: 1},\
        {Slot: 4b, components: {"minecraft:repair_cost": 1003}, count: 4},\
        {Slot: 5b, components: {"minecraft:repair_cost": 310002}, count: 1},\
        {Slot: 6b, components: {"minecraft:repair_cost": 70202}, count: 1},\
        {Slot: 7b, components: {"minecraft:repair_cost": 70203}, count: 3},\
        {Slot: 8b, components: {"minecraft:repair_cost": 70201}, count: 1},\
    ]\
} run return run function crafting:craft/ingredient/7/spgate-key


# どれにも一致しないなら失敗処理
function crafting:fail
