# ステータス伸びたら通知してあげましょうか
scoreboard players add @s Health 3
tellraw @s [{text: "[ MAX HP +3 ]",color: "gray"}]

scoreboard players add @s Strength 1
tellraw @s [{text: "[ STR +1 ]",color: "gray"}]

scoreboard players add @s Defence 1
tellraw @s [{text: "[ DEF +1 ]",color: "gray"}]
