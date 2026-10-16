#> stage:boss/4/death
# 
# 死亡時の処理
# 
# 

# loot
loot give @a[distance=..30] loot entity:mob_drop/6/boss

# kill
effect give @e[predicate=entity:entity_enemy, distance=..30] minecraft:wind_charged 1 100
kill @e[tag=gimmick, distance=..30]

# bossbar
bossbar remove minecraft:stage6.boss

# tell
tellraw @a [{text: "[!] ", color: "#e9b530"}, {translate: "entity.stage.6.boss.name", color: "#be2152"}, {translate: "stage.boss.slain"}]

execute as @a at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.7 0.5

# 出口開放
fill 10028 45 -179 10028 42 -177 minecraft:air destroy

# 次の道
#setblock 9866 107 -143 minecraft:end_portal_frame[facing=north]
#! 鍵のもとをあげるしレシピ本もあげる！（出口の銅チェストに入れましょう・素材は倒したらあげます）

# story
#execute unless score $talks_4 CanTalkWithMe matches 1 run scoreboard players set _ CanTalkWithMe 1
#scoreboard players set $talks_4 CanTalkWithMe 1
#scoreboard players set $avelian_talks story.progress 4

# ここではまだやらない

# 進行度
#scoreboard players set $stage_progress _ 3

# shop
execute unless score $boss_slain_6 story.progress matches 1 run function shop:token/open/6
scoreboard players set $boss_slain_6 story.progress 1
