#> entity:scoreboard/level/tank
# 
#% 偶数: hp +6, str +1, cd +1, def +3, mp +1, luck +1
#% 奇数: hp +5, str +2, cd +1, def +3, luck +2
# 

# lv の偶奇取得
scoreboard players operation _ Temp = @s CurrentLv
scoreboard players operation _ Temp %= #2 num

# 偶数
    execute if score _ Temp matches 0 run scoreboard players add @s Health 6
    execute if score _ Temp matches 0 run scoreboard players add @s Strength 1
    execute if score _ Temp matches 0 run scoreboard players add @s CritDamage 1
    execute if score _ Temp matches 0 run scoreboard players add @s Defence 3
    execute if score _ Temp matches 0 run scoreboard players add @s MagicPoint 1
    execute if score _ Temp matches 0 run scoreboard players add @s Luck 1

    execute if score _ Temp matches 0 run tellraw @s [{text: "[ MAX HP +6 ] [ STR +1 ] [ CD +1 ]",color: "gray"}]
    execute if score _ Temp matches 0 run tellraw @s [{text: "[ DEF +3 ] [ MP +1 ] [ LUCK +1 ]",color: "gray"}]

# 奇数
    execute if score _ Temp matches 1 run scoreboard players add @s Health 5
    execute if score _ Temp matches 1 run scoreboard players add @s Strength 2
    execute if score _ Temp matches 1 run scoreboard players add @s CritDamage 1
    execute if score _ Temp matches 1 run scoreboard players add @s Defence 3
    #execute if score _ Temp matches 1 run scoreboard players add @s MagicPoint 1
    execute if score _ Temp matches 1 run scoreboard players add @s Luck 2

    execute if score _ Temp matches 1 run tellraw @s [{text: "[ MAX HP +5 ] [ STR +2 ] [ CD +1 ]",color: "gray"}]
    execute if score _ Temp matches 1 run tellraw @s [{text: "[ DEF +3 ] [ LUCK +2 ]",color: "gray"}]
