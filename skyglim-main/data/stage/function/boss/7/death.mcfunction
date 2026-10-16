#> stage:boss/4/death
# 
# 死亡時の処理
# 
# 

# loot
loot give @a[distance=..30] loot entity:mob_drop/7/boss

# kill
effect give @e[predicate=entity:entity_enemy, distance=..30] minecraft:wind_charged 1 100
kill @e[tag=gimmick, distance=..30]

# bossbar
bossbar remove minecraft:stage7.boss

# tell
tellraw @a [{text: "[!] ", color: "#e9b530"}, {translate: "entity.stage.7.boss.name", color: "#be2152"}, {translate: "stage.boss.slain"}]

execute as @a at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.7 0.5

# 出口開放
fill 9778 4 -357 9778 1 -359 minecraft:air

# 次の道
forceload add 10015 -323 10019 -323
fill 10015 16 -323 10019 13 -323 minecraft:air replace minecraft:iron_bars
forceload remove 10015 -323 10019 -323

# story
#execute unless score $talks_4 CanTalkWithMe matches 1 run scoreboard players set _ CanTalkWithMe 1
#scoreboard players set $talks_4 CanTalkWithMe 1
#scoreboard players set $avelian_talks story.progress 4

# ここではまだやらない

# 進行度
#scoreboard players set $stage_progress _ 3

# shop
#execute unless score $boss_slain_6 story.progress matches 1 run function shop:token/open/6
#scoreboard players set $boss_slain_6 story.progress 1
