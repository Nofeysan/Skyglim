#> stage:boss/4/death
# 
# 死亡時の処理
# 
# 

# loot
execute at @a[distance=..100] run loot spawn ~ ~ ~ loot entity:mob_drop/ex5/boss

# kill
effect give @e[predicate=entity:entity_enemy, distance=..100] minecraft:wind_charged 1 100
kill @e[tag=gimmick, distance=..100]

# bossbar
bossbar remove minecraft:stageex5.boss

# tell
tellraw @a [{text: "[!] ", color: "#e9b530"}, {translate: "entity.stage.ex5.boss.name", color: "#be2152"}, {translate: "stage.boss.slain"}]

execute as @a at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.7 0.5

# 出口開放
fill 10278 26 -70 10276 24 -70 minecraft:air destroy

# 次の道
#forceload add 10050 -19 10076 -33
#clone 10051 -9 -20 10075 7 -32 10049 86 -20
#forceload remove 10050 -19 10076 -33
