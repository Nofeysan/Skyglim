#> stage:boss/1/death
# 
# 死亡時の処理
# 
# 

# loot
# s1 のみ初回に限り 100% ドロップ
execute unless score S1 BossSlain matches 1.. at @a[distance=..30] run loot spawn ~ ~ ~ loot entity:mob_drop/1/boss_first
execute if score S1 BossSlain matches 1.. at @a[distance=..30] run loot spawn ~ ~ ~ loot entity:mob_drop/1/boss
scoreboard players add S1 BossSlain 1

# kill
effect give @e[predicate=entity:entity_enemy, distance=..30] minecraft:wind_charged 1 100
kill @e[tag=gimmick, distance=..30]

# bossbar
bossbar remove minecraft:stage1.boss

# tell
tellraw @a [{text: "[!] ", color: "#e9b530"}, {translate: "entity.stage.1.boss.name", color: "#be2152"}, {translate: "stage.boss.slain"}]

execute as @a at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.7 0.5

# 出口開放
fill 9901 14 89 9901 12 87 minecraft:air

# 次の道
forceload add 9991 -25 9987 -21
fill 9991 67 -25 9987 62 -21 minecraft:air replace minecraft:oak_fence
forceload remove 9991 -25 9987 -21

# story
scoreboard players set _ CanTalkWithMe 1
scoreboard players set $avelian_talks story.progress 2
