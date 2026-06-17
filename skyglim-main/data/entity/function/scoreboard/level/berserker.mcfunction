#> entity:scoreboard/level/berserker
# 
#% 偶数: hp +2, str +4, cd +2, def +1, mp +1, luck +1
#% 奇数: hp +3, str +3, cd +2, def +1, luck +2
# 

# lv の偶奇取得
scoreboard players operation _ Temp = @s CurrentLv
scoreboard players operation _ Temp %= #2 num

# 偶数
    execute if score _ Temp matches 0 run scoreboard players add @s Health 2
    execute if score _ Temp matches 0 run scoreboard players add @s Strength 4
    execute if score _ Temp matches 0 run scoreboard players add @s CritDamage 2
    execute if score _ Temp matches 0 run scoreboard players add @s Defence 1
    execute if score _ Temp matches 0 run scoreboard players add @s MagicPoint 1
    execute if score _ Temp matches 0 run scoreboard players add @s Luck 1

    execute if score _ Temp matches 0 run tellraw @s [{text: "[ MAX HP +2 ] [ STR +4 ] [ CD +2 ]",color: "gray"}]
    execute if score _ Temp matches 0 run tellraw @s [{text: "[ DEF +1 ] [ MP +1 ] [ LUCK +1 ]",color: "gray"}]

# 奇数
    execute if score _ Temp matches 1 run scoreboard players add @s Health 3
    execute if score _ Temp matches 1 run scoreboard players add @s Strength 3
    execute if score _ Temp matches 1 run scoreboard players add @s CritDamage 2
    execute if score _ Temp matches 1 run scoreboard players add @s Defence 1
    #execute if score _ Temp matches 1 run scoreboard players add @s MagicPoint 1
    execute if score _ Temp matches 1 run scoreboard players add @s Luck 2

    execute if score _ Temp matches 1 run tellraw @s [{text: "[ MAX HP +3 ] [ STR +3 ] [ CD +2 ]",color: "gray"}]
    execute if score _ Temp matches 1 run tellraw @s [{text: "[ DEF +1 ] [ LUCK +2 ]",color: "gray"}]
