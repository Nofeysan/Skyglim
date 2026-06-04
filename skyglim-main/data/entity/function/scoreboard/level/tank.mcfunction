# ステータス伸びたら通知してあげましょうか
scoreboard players add @s Health 7
tellraw @s [{text: "[ MAX HP +7 ]",color: "gray"}]

scoreboard players add @s Strength 1
tellraw @s [{text: "[ STR +1 ]",color: "gray"}]

scoreboard players add @s Defence 3
tellraw @s [{text: "[ DEF +3 ]",color: "gray"}]
