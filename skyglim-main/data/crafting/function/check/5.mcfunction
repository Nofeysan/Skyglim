#> crafting:check/5
# 
# 0 1 2
# 3 4 5
# 6 7 8
# 

# ちょっといいつりざお
execute if data block ~ ~ ~ {Items: \
    [\
        {Slot: 2b, components: {"minecraft:repair_cost": 70000}, count: 1},\
        {Slot: 4b, components: {"minecraft:repair_cost": 71001}, count: 2},\
        {Slot: 5b, components: {"minecraft:repair_cost": 71002}, count: 1},\
        {Slot: 6b, components: {"minecraft:repair_cost": 70000}, count: 1},\
        {Slot: 8b, components: {"minecraft:repair_cost": 70120}, count: 1},\
    ]\
} run return run function crafting:craft/fishing/t11

# いいつりざお
execute if data block ~ ~ ~ {Items: \
    [\
        {Slot: 2b, components: {"minecraft:repair_cost": 70000}, count: 1},\
        {Slot: 4b, components: {"minecraft:repair_cost": 72001}, count: 1},\
        {Slot: 5b, components: {"minecraft:repair_cost": 71002}, count: 16},\
        {Slot: 6b, components: {"minecraft:repair_cost": 70000}, count: 1},\
        {Slot: 8b, components: {"minecraft:repair_cost": 70201}, count: 1},\
    ]\
} run return run function crafting:craft/fishing/t12

# 収集の知恵
execute if data block ~ ~ ~ {Items: \
    [\
        {Slot: 1b, components: {"minecraft:repair_cost": 1002}, count: 1},\
        {Slot: 2b, components: {"minecraft:repair_cost": 70702}, count: 3},\
        {Slot: 4b, components: {"minecraft:repair_cost": 72001}, count: 1},\
        {Slot: 5b, components: {"minecraft:repair_cost": 1002}, count: 1},\
        {Slot: 6b, components: {"minecraft:repair_cost": 70000}, count: 1},\
    ]\
} run return run function crafting:craft/magic/collect

# 変換の知恵
execute if data block ~ ~ ~ {Items: \
    [\
        {Slot: 1b, components: {"minecraft:repair_cost": 1003}, count: 1},\
        {Slot: 3b, components: {"minecraft:repair_cost": 70703}, count: 1},\
        {Slot: 4b, components: {"minecraft:repair_cost": 400004}, count: 1},\
        {Slot: 5b, components: {"minecraft:repair_cost": 70704}, count: 1},\
        {Slot: 7b, components: {"minecraft:repair_cost": 70002}, count: 1},\
    ]\
} run return run function crafting:craft/magic/conversion

# どれにも一致しないなら失敗処理
function crafting:fail
