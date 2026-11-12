#> stage:boss/4/death
# 
# 死亡時の処理
# 
# 

# loot
execute at @a[distance=..30] run loot spawn ~ ~ ~ loot entity:mob_drop/10/boss

# kill
effect give @e[predicate=entity:entity_enemy, distance=..30] minecraft:wind_charged 1 100
kill @e[tag=gimmick, distance=..30]

# bossbar
bossbar remove minecraft:stage10.boss

# tell
tellraw @a [{text: "[!] ", color: "#e9b530"}, {translate: "entity.stage.10.boss.name", color: "#be2152"}, {translate: "stage.boss.slain"}]

execute as @a at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.7 0.5

# 出口開放
fill 10142 8 -350 10143 6 -350 minecraft:air destroy
clone 10136 -2 -351 10159 -2 -328 10136 5 -351

# 次の道
forceload add 10050 -19 10076 -33
clone 10051 -9 -20 10075 7 -32 10049 86 -20
forceload remove 10050 -19 10076 -33
