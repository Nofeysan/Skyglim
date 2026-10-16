#> damageapi:player_tick
# 
# アイテムを持ち替えたことを検知
# ステータスを再読み込みする
# 

#* 初期化
    scoreboard players operation @s act_Health = @s Health
    scoreboard players operation @s act_Strength = @s Strength
    scoreboard players operation @s act_CritChance = @s CritChance
    scoreboard players operation @s act_CritDamage = @s CritDamage
    scoreboard players operation @s act_Defence = @s Defence
    scoreboard players operation @s act_Speed = @s Speed
    scoreboard players operation @s act_MagicPoint = @s MagicPoint
    scoreboard players operation @s act_Luck = @s Luck
    scoreboard players set @s act_Damage 0

#* data が存在したら計算する
    # 各装備
        data modify storage calc_stats: temp set from entity @s equipment

        execute if data storage calc_stats: temp.head run function damageapi:status/player/calc/head
        execute if data storage calc_stats: temp.chest run function damageapi:status/player/calc/chest
        execute if data storage calc_stats: temp.legs run function damageapi:status/player/calc/legs
        execute if data storage calc_stats: temp.feet run function damageapi:status/player/calc/feet

    # shard
        data modify storage calc_stats: temp set from entity @s Inventory

        execute if data storage calc_stats: temp[{Slot: 9b}].components."minecraft:custom_data".data.shard run function damageapi:status/player/calc/shard-1
        execute if data storage calc_stats: temp[{Slot: 10b}].components."minecraft:custom_data".data.shard run function damageapi:status/player/calc/shard-2
        execute if data storage calc_stats: temp[{Slot: 11b}].components."minecraft:custom_data".data.shard run function damageapi:status/player/calc/shard-3

    # mainhand 武器
        data modify storage calc_stats: temp set from entity @s SelectedItem

        execute if data storage calc_stats: temp.components."minecraft:custom_data".data.mainhand run function damageapi:status/player/calc/mainhand


#+ 倍率処理
    #* 倍率基礎値設定
    scoreboard players set hp multi 100
    scoreboard players set str multi 100
    scoreboard players set cc multi 100
    scoreboard players set cd multi 100
    scoreboard players set def multi 100
    scoreboard players set spd multi 100
    scoreboard players set mp multi 100
    scoreboard players set luck multi 100
    scoreboard players set dmg multi 100

    #* 倍率加算
        # 職業・瑞祥（CC, LUCK +10%）
            execute if entity @s[scores={occupation = 5}] run function damageapi:status/player/calc/occupation

        # 防具
            # reset
                scoreboard players set $armor_id_head _ 0
            
            # 代表して頭の id をスコアに保存
                data modify storage damageapi: armor set from entity @s equipment
                execute store result score $armor_id_head _ run data get storage damageapi: armor.head.components."minecraft:repair_cost"
            
            # 0 じゃなければ探索開始
                execute unless score $armor_id_head _ matches ..1113004 run function damageapi:status/player/search-2/armor/.root

        # enchantment - 倍率
            function modify:enchantment/calc/root

    #* 倍率計算
        scoreboard players operation @s act_Health *= hp multi
        scoreboard players operation @s act_Health /= #100 num
        scoreboard players operation @s act_Strength *= str multi
        scoreboard players operation @s act_Strength /= #100 num
        scoreboard players operation @s act_CritChance *= cc multi
        scoreboard players operation @s act_CritChance /= #100 num
        scoreboard players operation @s act_CritDamage *= cd multi
        scoreboard players operation @s act_CritDamage /= #100 num
        scoreboard players operation @s act_Defence *= def multi
        scoreboard players operation @s act_Defence /= #100 num
        scoreboard players operation @s act_Speed *= spd multi
        scoreboard players operation @s act_Speed /= #100 num
        scoreboard players operation @s act_MagicPoint *= mp multi
        scoreboard players operation @s act_MagicPoint /= #100 num
        scoreboard players operation @s act_Luck *= luck multi
        scoreboard players operation @s act_Luck /= #100 num
        scoreboard players operation @s act_Damage *= dmg multi
        scoreboard players operation @s act_Damage /= #100 num

#

#* マイナス処理
    # HP, MP <= 100 なら 10 にそろえる
        execute if score @s act_Health matches ..99 run scoreboard players set @s act_Health 100
        execute if score @s act_MagicPoint matches ..99 run scoreboard players set @s act_MagicPoint 100

    # STR, CD, DEF, SPD, LUCK < 0 なら 0 にそろえる
        execute if score @s act_Strength matches ..-1 run scoreboard players set @s act_Strength 0
        execute if score @s act_CritDamage matches ..-1 run scoreboard players set @s act_CritDamage 0
        execute if score @s act_Defence matches ..-1 run scoreboard players set @s act_Defence 0
        execute if score @s act_Speed matches ..-1 run scoreboard players set @s act_Speed 0
        execute if score @s act_Luck matches ..-1 run scoreboard players set @s act_Luck 0

#! debug
#-tellraw @s {text: "\uE010 Status Checked!"}
