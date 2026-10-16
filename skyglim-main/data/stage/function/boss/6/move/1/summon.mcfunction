#> stage:boss/6/move/1/summon
# 
# 
# 
# 

# summon
    summon minecraft:marker 10013 42 -188 {Tags: ["gimmick", "gimmick.aoe.s6"]}
    summon minecraft:marker 10022 42 -181 {Tags: ["gimmick", "gimmick.aoe.s6"]}
    summon minecraft:marker 10018 42 -170 {Tags: ["gimmick", "gimmick.aoe.s6"]}
    summon minecraft:marker 10012 42 -167 {Tags: ["gimmick", "gimmick.aoe.s6"]}
    summon minecraft:marker 10007 42 -172 {Tags: ["gimmick", "gimmick.aoe.s6"]}
    summon minecraft:marker 10001 42 -177 {Tags: ["gimmick", "gimmick.aoe.s6"]}
    summon minecraft:marker 10005 42 -185 {Tags: ["gimmick", "gimmick.aoe.s6"]}
    summon minecraft:marker 10012 42 -188 {Tags: ["gimmick", "gimmick.aoe.s6"]}

# 任意で選択 (人数によって変化; 4 + n (n <= 4))
    execute store result score _ _ if entity @a[distance=..30]
    execute if score _ _ matches 1 run tag @e[tag=gimmick, tag=gimmick.aoe.s6, type=minecraft:marker, distance=..30, limit= 4, sort=random] add selected
    execute if score _ _ matches 2 run tag @e[tag=gimmick, tag=gimmick.aoe.s6, type=minecraft:marker, distance=..30, limit= 5, sort=random] add selected
    execute if score _ _ matches 3 run tag @e[tag=gimmick, tag=gimmick.aoe.s6, type=minecraft:marker, distance=..30, limit= 6, sort=random] add selected
    execute if score _ _ matches 4 run tag @e[tag=gimmick, tag=gimmick.aoe.s6, type=minecraft:marker, distance=..30, limit= 7, sort=random] add selected
    execute if score _ _ matches 5.. run tag @e[tag=gimmick, tag=gimmick.aoe.s6, type=minecraft:marker, distance=..30, limit= 8, sort=random] add selected

# aoe, enemy summon
    execute at @e[tag=gimmick, tag=gimmick.aoe.s6, type=minecraft:marker, tag=selected, distance=..30] run function entity:aec_manager/summon/.cyl {r: 27, t: 300, dmg: 1, str: 1, id: 61}
    execute at @e[tag=gimmick, tag=gimmick.aoe.s6, type=minecraft:marker, tag=selected, distance=..30] run function stage:boss/6/move/1/monument

# kill
    kill @e[type=minecraft:marker, tag=gimmick, tag=gimmick.aoe.s6]
