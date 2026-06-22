#> entity:scoreboard/level/zuishou
# 
#% 偶数: hp +4, str +1, cd +1, def +2, mp +1, luck +3
#% 奇数: hp +4, str +2, cd +1, def +2, luck +2
# 

# lv の偶奇取得
scoreboard players operation _ Temp = @s CurrentLv
scoreboard players operation _ Temp %= #2 num

# 偶数
    execute if score _ Temp matches 0 run scoreboard players add @s Health 4
    execute if score _ Temp matches 0 run scoreboard players add @s Strength 1
    execute if score _ Temp matches 0 run scoreboard players add @s CritDamage 1
    execute if score _ Temp matches 0 run scoreboard players add @s Defence 2
    execute if score _ Temp matches 0 run scoreboard players add @s MagicPoint 1
    execute if score _ Temp matches 0 run scoreboard players add @s Luck 3

    execute if score _ Temp matches 0 run tellraw @s [{text: "[ MAX HP +4 ] [ STR +1 ] [ CD +1 ]",color: "gray"}]
    execute if score _ Temp matches 0 run tellraw @s [{text: "[ DEF +2 ] [ MP +1 ] [ LUCK +3 ]",color: "gray"}]

# 奇数
    execute if score _ Temp matches 1 run scoreboard players add @s Health 4
    execute if score _ Temp matches 1 run scoreboard players add @s Strength 2
    execute if score _ Temp matches 1 run scoreboard players add @s CritDamage 1
    execute if score _ Temp matches 1 run scoreboard players add @s Defence 1
    #execute if score _ Temp matches 1 run scoreboard players add @s MagicPoint 1
    execute if score _ Temp matches 1 run scoreboard players add @s Luck 2

    execute if score _ Temp matches 1 run tellraw @s [{text: "[ MAX HP +4 ] [ STR +2 ] [ CD +1 ]",color: "gray"}]
    execute if score _ Temp matches 1 run tellraw @s [{text: "[ DEF +1 ] [ LUCK +2 ]",color: "gray"}]
