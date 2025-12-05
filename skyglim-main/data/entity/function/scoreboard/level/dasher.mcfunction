# ステータス伸びたら通知してあげましょうか
scoreboard players add @s Health 5
tellraw @s [{"text": "[ MAX HP +5 ]","color": "gray"}]

scoreboard players add @s Strength 2
tellraw @s [{"text": "[ STR +2 ]","color": "gray"}]

scoreboard players add @s Defence 2
tellraw @s [{"text": "[ DEF +2 ]","color": "gray"}]

# %4 = 2 なら SPD+1
scoreboard players operation _ Temp = @s CurrentLv
scoreboard players operation _ Temp %= #4 num
execute if score _ Temp matches 2 run scoreboard players add @s Speed 1
execute if score _ Temp matches 2 run tellraw @s [{"text": "[ SPD +1 ]","color": "gray"}]
