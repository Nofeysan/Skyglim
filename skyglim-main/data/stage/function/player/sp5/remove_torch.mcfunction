#> stage:player/sp5/remove_torch
# 
# 攻撃を受けて数が減る
# 
# 

# remove
    item modify entity @s weapon.offhand {function: "minecraft:set_count", count: -6, add: true}

# perform
    execute at @s run playsound minecraft:block.glass.break voice @s ~ ~ ~ 0.3 1.7
