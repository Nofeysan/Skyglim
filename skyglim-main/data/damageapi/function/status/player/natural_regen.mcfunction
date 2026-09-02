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


#* MP: 1% を回復
    scoreboard players operation @s Temp = @s MaxMP
    scoreboard players operation @s Temp /= #100 num

    scoreboard players operation @s CurrentMP += @s Temp

    scoreboard players reset @s Temp


#* アイテム効果
    # reset
        scoreboard players set $shard_id_calc _ 0
        scoreboard players set $health_regen _ 0
        scoreboard players set $mp_regen _ 0

    # 取得・検知
        data modify storage damageapi: calc.shard set from entity @s Inventory

        execute store result score $shard_id_calc _ run data get storage damageapi: calc.shard[{Slot: 9b}].components."minecraft:repair_cost"
        function damageapi:status/player/search/regen

        execute store result score $shard_id_calc _ run data get storage damageapi: calc.shard[{Slot: 10b}].components."minecraft:repair_cost"
        function damageapi:status/player/search/regen

        execute store result score $shard_id_calc _ run data get storage damageapi: calc.shard[{Slot: 11b}].components."minecraft:repair_cost"
        function damageapi:status/player/search/regen

        # 加算
            scoreboard players operation @s CurrentHealth += $health_regen _
            scoreboard players operation @s CurrentMP += $mp_regen _
