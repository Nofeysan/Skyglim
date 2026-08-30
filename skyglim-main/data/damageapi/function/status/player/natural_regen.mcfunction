#> damageapi:status/player/natural_regen
# 
# HP, MP の回復
# 
# 


#* HP: 0.5% を回復
    scoreboard players operation @s Temp = @s MaxHealth
    scoreboard players operation @s Temp /= #2 num
    scoreboard players operation @s Temp /= #100 num

    scoreboard players operation @s CurrentHealth += @s Temp

    scoreboard players reset @s Temp

    # item(重複不可)
    scoreboard players set _ _ 0

        # 活力の矢 (+1)
            execute if predicate damageapi:item/has_1112011 run scoreboard players set _ _ 100

        # 加算
            scoreboard players operation @s CurrentHealth += _ _

#* MP: 1% を回復
    scoreboard players operation @s Temp = @s MaxMP
    scoreboard players operation @s Temp /= #100 num

    scoreboard players operation @s CurrentMP += @s Temp

    scoreboard players reset @s Temp

    # item(重複不可)
    scoreboard players set _ _ 0
    
        # 活力の天使の羽 (+1)
            execute if predicate damageapi:item/has_1112012 run scoreboard players set _ _ 100

        # 加算
            scoreboard players operation @s CurrentMP += _ _
