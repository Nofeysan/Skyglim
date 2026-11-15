#> stage:boss/4/death
# 
# 死亡時の処理
# 
# 

# loot
execute at @a[distance=..50] run loot spawn ~ ~ ~ loot entity:mob_drop/ex2/boss

# kill
effect give @e[predicate=entity:entity_enemy, distance=..50] minecraft:wind_charged 1 100
kill @e[tag=gimmick, distance=..50]

# bossbar
bossbar remove minecraft:stageex2.boss

# tell
tellraw @a [{text: "[!] ", color: "#e9b530"}, {translate: "entity.stage.ex2.boss.name", color: "#be2152"}, {translate: "stage.boss.slain"}]

execute as @a at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.7 0.5

# 出口開放
fill 9476 38 -236 9476 35 -234 minecraft:air destroy

# 次の道
#forceload add 10050 -19 10076 -33
#clone 10051 -9 -20 10075 7 -32 10049 86 -20
#forceload remove 10050 -19 10076 -33
