#> stage:boss/4/death
# 
# 死亡時の処理
# 
# 

# loot
execute at @a[distance=..100] run loot spawn ~ ~ ~ loot entity:mob_drop/14/boss

# kill
effect give @e[predicate=entity:entity_enemy, distance=..100] minecraft:wind_charged 1 100
kill @e[tag=gimmick, distance=..100]

# bossbar
bossbar remove minecraft:stage14.boss

# tell
tellraw @a [{text: "[!] ", color: "#e9b530"}, {translate: "entity.stage.14.boss.name", color: "#be2152"}, {translate: "stage.boss.slain"}]

execute as @a at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.7 0.5

# 出口開放
fill 7523 84 -76 7523 82 -78 minecraft:air destroy
clone 7523 70 -98 7565 70 -56 7523 81 -98

# 次の道
forceload add 7966 -78 7978 -62
clone 7967 129 -77 7977 137 -63 7967 84 -77
forceload remove 7966 -78 7978 -62
