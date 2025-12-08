# ステータス伸びたら通知してあげましょうか
scoreboard players add @s Health 4
tellraw @s [{text: "[ MAX HP +4 ]",color: "gray"}]

scoreboard players add @s Strength 1
tellraw @s [{text: "[ STR +1 ]",color: "gray"}]

scoreboard players add @s Defence 2
tellraw @s [{text: "[ DEF +2 ]",color: "gray"}]

scoreboard players add @s Luck 2
tellraw @s [{text: "[ LUCK +2 ]",color: "gray"}]

