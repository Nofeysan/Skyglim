#> stage:boss/4/move/1/select
# 
# 上下をランダムで選択
# 
# 

# 抽出
execute store result score $1 s4.updown run random value 0..1
execute store result score $2 s4.updown run random value 0..1
execute store result score $3 s4.updown run random value 0..1
execute store result score $4 s4.updown run random value 0..1
execute store result score $5 s4.updown run random value 0..1
execute store result score $6 s4.updown run random value 0..1
execute store result score $7 s4.updown run random value 0..1

# storage に保存
data remove storage stage: s4.updown
data modify storage stage: s4.updown set value []

execute if score $1 s4.updown matches 0 run data modify storage stage: s4.updown append value "↑"
execute if score $1 s4.updown matches 1 run data modify storage stage: s4.updown append value "↓"
execute if score $2 s4.updown matches 0 run data modify storage stage: s4.updown append value "↑"
execute if score $2 s4.updown matches 1 run data modify storage stage: s4.updown append value "↓"
execute if score $3 s4.updown matches 0 run data modify storage stage: s4.updown append value "↑"
execute if score $3 s4.updown matches 1 run data modify storage stage: s4.updown append value "↓"
execute if score $4 s4.updown matches 0 run data modify storage stage: s4.updown append value "↑"
execute if score $4 s4.updown matches 1 run data modify storage stage: s4.updown append value "↓"
execute if score $5 s4.updown matches 0 run data modify storage stage: s4.updown append value "↑"
execute if score $5 s4.updown matches 1 run data modify storage stage: s4.updown append value "↓"
execute if score $6 s4.updown matches 0 run data modify storage stage: s4.updown append value "↑"
execute if score $6 s4.updown matches 1 run data modify storage stage: s4.updown append value "↓"
execute if score $7 s4.updown matches 0 run data modify storage stage: s4.updown append value "↑"
execute if score $7 s4.updown matches 1 run data modify storage stage: s4.updown append value "↓"

# title
title @a[distance=..30] times 0 100 10
title @a[distance=..30] title {text: "[!]", color: "#d94262"}
title @a[distance=..30] subtitle \
[\
    {storage: "stage:", nbt: "s4.updown[0]", color: "#e9b530"},\
    {storage: "stage:", nbt: "s4.updown[1]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "s4.updown[2]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "s4.updown[3]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "s4.updown[4]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "s4.updown[5]", color: "#fff6fe"},\
    {storage: "stage:", nbt: "s4.updown[6]", color: "#fff6fe"},\
]

# sound
execute as @a at @s run playsound minecraft:entity.wither.ambient voice @s ~ ~ ~ 0.7 1

# boss
tp @n[predicate=entity:entity_enemy, tag=boss, tag=s4] 9882 -26 -138
effect give @n[predicate=entity:entity_enemy, tag=boss, tag=s4] minecraft:slowness 14 99
particle minecraft:end_rod 9882 -28 -138 0.5 0.8 0.5 0.1 120
