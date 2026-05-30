#> stage:boss/1/death
# 
# 死亡時の処理
# 
# 

# loot
execute at @a[distance=..30] run loot spawn ~ ~ ~ loot entity:mob_drop/2/boss

# kill
effect give @e[predicate=entity:entity_enemy, distance=..30] minecraft:wind_charged 1 100
kill @e[tag=gimmick, distance=..30]

# bossbar
bossbar remove minecraft:stage2.boss

# tell
tellraw @a [{text: "[!] ", color: "#e9b530"}, {translate: "entity.stage.2.boss.name", color: "#be2152"}, {translate: "stage.boss.slain"}]

execute as @a at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.7 0.5

# 出口開放
fill 9877 25 -100 9879 22 -100 minecraft:air destroy

# 次の道
forceload add 9931 -36 9931 -36
fill 9931 64 -35 9931 62 -37 minecraft:air destroy
forceload remove 9931 -36 9931 -36

# story - テレポーター解放時にする
#scoreboard players set _ CanTalkWithMe 1
#scoreboard players set $avelian_talks story.progress 3

# 進行度
scoreboard players set $stage_progress _ 2
