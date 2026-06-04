# ステータス伸びたら通知してあげましょうか
scoreboard players add @s Health 3
tellraw @s [{text: "[ MAX HP +3 ]",color: "gray"}]

scoreboard players add @s Strength 3
tellraw @s [{text: "[ STR +2 ]",color: "gray"}]

scoreboard players add @s Defence 1
tellraw @s [{text: "[ DEF +1 ]",color: "gray"}]

# %4 = 2 なら SPD+1
scoreboard players operation _ Temp = @s CurrentLv
scoreboard players operation _ Temp %= #4 num
execute if score _ Temp matches 3 run scoreboard players add @s Speed 1
execute if score _ Temp matches 3 run tellraw @s [{text: "[ SPD +1 ]",color: "gray"}]
