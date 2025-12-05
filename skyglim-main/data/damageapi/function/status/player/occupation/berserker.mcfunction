team leave @s

# 通知
tellraw @a [{"text": "\ue010 ","color": "gray"},{"selector": "@s"},{"text": " が "},{"text": "狂戦士","color": "red"},{"text": " になりました！"}]
execute at @s run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 0.5 0.5

# システム
scoreboard players set @s occupation 2
team join berserker
