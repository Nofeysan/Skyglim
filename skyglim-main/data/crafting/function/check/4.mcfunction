#> crafting:check/4
# 
# 0 1 2
# 3 4 5
# 6 7 8
# 

# Enchantment 圧縮
#execute if data block ~ ~ ~ {Items:[{Slot:0b, components:{"minecraft:repair_cost": 71000}, count:8},{Slot:1b, components:{"minecraft:repair_cost": 71000}, count:8},{Slot:2b, components:{"minecraft:repair_cost": 71000}, count:8},{Slot:3b, components:{"minecraft:repair_cost": 71000}, count:8},{Slot:5b, components:{"minecraft:repair_cost": 71000}, count:8},{Slot:6b, components:{"minecraft:repair_cost": 71000}, count:8},{Slot:7b, components:{"minecraft:repair_cost": 71000}, count:8},{Slot:8b, components:{"minecraft:repair_cost": 71000}, count:8}]} run return run function crafting:craft/ingredient/e-rotten_flesh

# 三色お団子雑煮
execute if data block ~ ~ ~ {Items: \
    [\
        {Slot: 3b, components: {"minecraft:repair_cost": 80000}, count: 1},\
        {Slot: 4b, components: {"minecraft:repair_cost": 80001}, count: 1},\
        {Slot: 5b, components: {"minecraft:repair_cost": 80002}, count: 1},\
        {Slot: 7b, components: {"minecraft:repair_cost": 70002}, count: 1},\
    ]\
} run return run function crafting:craft/ingredient/4/zouni


# どれにも一致しないなら失敗処理
    function crafting:fail
