#> stage:boss/4/death
# 
# 死亡時の処理
# 
# 

# loot
execute at @a[distance=..100] run loot spawn ~ ~ ~ loot entity:mob_drop/12/boss

# kill
effect give @e[predicate=entity:entity_enemy, distance=..100] minecraft:wind_charged 1 100
kill @e[tag=gimmick, distance=..100]

# bossbar
bossbar remove minecraft:stage12.boss

# tell
tellraw @a [{text: "[!] ", color: "#e9b530"}, {translate: "entity.stage.12.boss.name", color: "#be2152"}, {translate: "stage.boss.slain"}]

execute as @a at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.7 0.5

# 出口開放
fill 11063 230 -68 11056 229 -68 minecraft:air replace minecraft:cracked_deepslate_tiles
clone 11036 198 -95 11083 198 -67 11036 228 -95

# 次の道
#forceload add 10050 -19 10076 -33
#clone 10051 -9 -20 10075 7 -32 10049 86 -20
#forceload remove 10050 -19 10076 -33

# item
loot spawn 11061 230 -70 loot stage:importants/12/key-beta
execute positioned 11061 230 -70 run data modify entity @n[type=minecraft:item] PickupDelay set value 40
execute positioned 11061 230 -70 run data modify entity @n[type=minecraft:item] Glowing set value true
execute positioned 11061 230 -70 run data modify entity @n[type=minecraft:item] NoGravity set value true
execute positioned 11061 230 -70 run data modify entity @n[type=minecraft:item] Motion set value [0.0d, 0.0d, 0.0d]

loot spawn 11058 230 -70 loot stage:importants/12/book
execute positioned 11058 230 -70 run data modify entity @n[type=minecraft:item] PickupDelay set value 40
execute positioned 11058 230 -70 run data modify entity @n[type=minecraft:item] Glowing set value true
execute positioned 11058 230 -70 run data modify entity @n[type=minecraft:item] NoGravity set value true
execute positioned 11058 230 -70 run data modify entity @n[type=minecraft:item] Motion set value [0.0d, 0.0d, 0.0d]
