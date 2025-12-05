###* **攻撃者の** 半径15m以内にいるプレイヤーにXPを共有する
execute as @a[distance=..15] run scoreboard players operation @s CurrentXp += xp Temp
execute as @a[distance=..15] run scoreboard players set @s ShowXpTime 40
execute as @a[distance=..15] run scoreboard players operation @s ShowXp += xp Temp

execute as @a[distance=..15] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.8 2

#! debug
#execute on attacker run tellraw @s [{"text": "+","color": "#92f3a4"},{"score": {"name": "xp", "objective": "Temp"}},{"text": "XP"}]
#particle minecraft:cloud ~ ~ ~ 1 1 1 0 120
