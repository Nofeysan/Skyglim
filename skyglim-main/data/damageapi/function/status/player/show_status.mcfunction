##> damageapi:player_tick
##* 
##* I.  actionbar に表示
##* II. stats book を作成する
##* 

##+ actionbar 表示
##* 表示用計算
scoreboard players operation @s ShowMaxMP = @s MaxMP
scoreboard players operation @s ShowMaxMP /= #100 num

scoreboard players operation @s CurrentMP < @s MaxMP

scoreboard players operation @s ShowCurrentMP = @s CurrentMP
scoreboard players operation @s ShowCurrentMP /= #100 num

scoreboard players operation @s XpRate = @s CurrentXp
scoreboard players operation @s XpRate *= #10000 num
scoreboard players operation @s XpRate /= @s NextXp
scoreboard players operation int XpRate = @s XpRate
scoreboard players operation int XpRate /= #100 num
scoreboard players operation float XpRate = @s XpRate
scoreboard players operation float XpRate %= #100 num

##* 表示
# 経験値表示を減らす
scoreboard players remove @s[scores={ShowXpTime=0..}] ShowXpTime 1
execute if score @s ShowXpTime matches -1 run scoreboard players set @s ShowXp 0

#+ 各状況に応じて要素を代入
# 体力
data modify storage status: show.hp set value [{text: "\uE000\uf101"},{"score": {"name": "@s", "objective": "ShowCurrentHealth"}, color: "#ffffff", font: "hp"},{text: "/", color: "#ffffff", font: "hp"},{"score": {"name":"@s", "objective": "ShowMaxHealth"}, color: "#ffffff", font: "hp"}]

# Absorption がある場合は上書き
execute if score @s Absorption matches 1.. run data modify storage status: show.hp set value [{text: "\uE000\uf101"},{"score": {"name": "@s", "objective": "ShowCurrentHealth"}, color: "#ffffff", font: "hp"},{text: "+", color: "#ffd23c", font: "crit_damage"},{"score": {"name":"@s", "objective": "ShowAbsorption"}, color: "#ffd23c", font: "crit_damage"},{text: "/", color: "#ffffff", font: "hp"},{"score": {"name": "@s", "objective": "ShowMaxHealth"}, color:"#ffffff", font: "hp"}]

# XP
#data modify storage status: show.xp set value [{text: "["},{"score": {"name": "@s", "objective": "CurrentLv"}, color: "#42ffff"},{text: "] "},{"score": {"name": "@s", "objective": "CurrentXp"}, color: "#92f3a4"},{text: "/", color: "#92f3a4"},{"score": {"name": "@s", "objective": "NextXp"}, color: "#92f3a4"},{text: " (", color: "#92f3a4"},{"score": {"name": "int", "objective": "XpRate"}, color:"#ffd728"},{text: ".", color: "#ffd728"},{"score": {"name": "float", "objective": "XpRate"}, color: "#ffd728"},{text: "%", color: "#ffd728"},{text: ")", color: "#92f3a4"}]
data modify storage status: show.xp set value [{text: "["},{"score": {"name": "@s", "objective": "CurrentLv"}, color: "#42ffff"},{text: "]"},{text: " \ue011 ", color: "#92f3a4"},{"score": {"name": "int", "objective": "XpRate"}, color:"#ffd728"},{text: ".", color: "#ffd728"},{"score": {"name": "float", "objective": "XpRate"}, color: "#ffd728"},{text: "%", color: "#ffd728"},{text: " \ue010", color: "#92f3a4"}]

# XP 取得時は上書き
#execute if score @s ShowXpTime matches 1.. run data modify storage status: show.xp set value [{text: "["},{"score": {"name": "@s", "objective": "CurrentLv"}, color: "#42ffff"},{text: "] "},{"score": {"name": "@s", "objective": "CurrentXp"}, color: "#92f3a4"},{text: "/", color: "#92f3a4"},{"score": {"name": "@s", "objective": "NextXp"}, color: "#92f3a4"},{text: " +", color: "#c5edff"},{"score": {"name": "@s", "objective": "ShowXp"}, color: "#c5edff"},{text: "XP", color: "#c5edff"},{text: " (", color: "#92f3a4"},{"score": {"name": "int", "objective": "XpRate"}, color: "#ffd728"},{text: ".", color: "#ffd728"},{"score": {"name": "float", "objective": "XpRate"}, color: "#ffd728"},{text: "%", color:"#ffd728"},{text: ")", color:"#92f3a4"}]
execute if score @s ShowXpTime matches 1.. run data modify storage status: show.xp set value [{text: "["},{"score": {"name": "@s", "objective": "CurrentLv"}, color: "#42ffff"},{text: "]"},{text: " \ue011 ", color: "#92f3a4"},{"score": {"name": "int", "objective": "XpRate"}, color: "#ffd728"},{text: ".", color: "#ffd728"},{"score": {"name": "float", "objective": "XpRate"}, color: "#ffd728"},{text: "%", color:"#ffd728"},{text: " \ue010 ", color: "#92f3a4"},{text: "+", color: "#c5edff"},{"score": {"name": "@s", "objective": "ShowXp"}, color: "#c5edff"},{text: "XP", color: "#c5edff"}]

# MP
data modify storage status: show.mp set value [{text: "\uE006\uf101"},{"score": {"name": "@s", "objective": "ShowCurrentMP"}, color: "#ffffff", font: "mp"},{text: "/", color: "#ffffff", font: "mp"},{"score": {"name": "@s", "objective": "ShowMaxMP"}, color: "#ffffff", font: "mp"}]

# div
data modify storage status: show.div set value {text:"  |  ",color: "gray"}

# 表示
title @s actionbar [\
    {text: ""},\
    {storage: "status:", nbt: "show.hp", interpret: true}, \
    {storage: "status:", nbt: "show.div", interpret: true}, \
    {storage: "status:", nbt: "show.xp", interpret: true}, \
    {storage: "status:", nbt: "show.div", interpret: true},\
    {storage: "status:", nbt: "show.mp", interpret: true}\
]
# XP 取得を表示する
#execute unless score @s Absorption matches 1.. if score @s ShowXpTime matches 0.. run title @s actionbar [\
{text:"\uE000\uf101"},{text:"HP ",color:"#e6a4a7"},{"score": {"name":"@s", "objective":"ShowCurrentHealth"},color:"#e6a4a7"},{text:"/",color:"#e6a4a7"},{"score": {"name":"@s", "objective":"ShowMaxHealth"},color:"#e6a4a7"},\
{text:"  |  ",color: "gray"},{text:"["},{"score": {"name": "@s","objective": "CurrentLv"},color: "#42ffff"},{text: "] "},{"score": {"name": "@s","objective": "CurrentXp"},color: "#92f3a4"},{text: "/",color: "#92f3a4"},{"score": {"name": "@s","objective": "NextXp"},color: "#92f3a4"},{text: " +",color: "#c5edff"},{"score": {"name": "@s","objective": "ShowXp"},color: "#c5edff"},{text: "XP",color: "#c5edff"},{text: " (",color: "#92f3a4"},{"score":{"name":"int","objective":"XpRate"},color:"#ffd728"},{text: ".",color:"#ffd728"},{"score":{"name":"float","objective":"XpRate"},color:"#ffd728"},{text: "%",color:"#ffd728"},{text: ")",color:"#92f3a4"},{text: "  |  ",color:"gray"},\
{text:"\uE006\uf101"},{text:"MP ",color:"#9279d3"},{"score": {"name":"@s", "objective":"ShowCurrentMP"},color:"#9279d3"},{text:"/",color:"#9279d3"},{"score": {"name":"@s", "objective":"ShowMaxMP"},color:"#9279d3"}]

#execute if score @s Absorption matches 1.. if score @s ShowXpTime matches 0.. run title @s actionbar [\
{text:"\uE000\uf101"},{text:"HP ",color:"#e6a4a7"},{"score": {"name":"@s", "objective":"ShowCurrentHealth"},color:"#e6a4a7"},{text:"+",color:"#f5de84"},{"score":{"name":"@s", "objective":"ShowAbsorption"},color:"#f5de84"},{text:"/",color:"#e6a4a7"},{"score": {"name":"@s", "objective":"ShowMaxHealth"},color:"#e6a4a7"},\
{text:"  |  ",color: "gray"},{text:"["},{"score": {"name": "@s","objective": "CurrentLv"},color: "#42ffff"},{text: "] "},{"score": {"name": "@s","objective": "CurrentXp"},color: "#92f3a4"},{text: "/",color: "#92f3a4"},{"score": {"name": "@s","objective": "NextXp"},color: "#92f3a4"},{text: " +",color: "#c5edff"},{"score": {"name": "@s","objective": "ShowXp"},color: "#c5edff"},{text: "XP",color: "#c5edff"},{text: " (",color: "#92f3a4"},{"score":{"name":"int","objective":"XpRate"},color:"#ffd728"},{text: ".",color:"#ffd728"},{"score":{"name":"float","objective":"XpRate"},color:"#ffd728"},{text: "%",color:"#ffd728"},{text: ")",color:"#92f3a4"},{text: "  |  ",color:"gray"},\
{text:"\uE006\uf101"},{text:"MP ",color:"#9279d3"},{"score": {"name":"@s", "objective":"ShowCurrentMP"},color:"#9279d3"},{text:"/",color:"#9279d3"},{"score": {"name":"@s", "objective":"ShowMaxMP"},color:"#9279d3"}]

# XP 表示なし
#execute unless score @s Absorption matches 1.. unless score @s ShowXpTime matches 0.. run title @s actionbar [\
{text:"\uE000\uf101"},{text:"HP ",color:"#e6a4a7"},{"score": {"name":"@s", "objective":"ShowCurrentHealth"},color:"#e6a4a7"},{text:"/",color:"#e6a4a7"},{"score": {"name":"@s", "objective":"ShowMaxHealth"},color:"#e6a4a7"},\
{text:"  |  ",color: "gray"},{text:"["},{"score": {"name": "@s","objective": "CurrentLv"},color: "#42ffff"},{text: "] "},{"score": {"name": "@s","objective": "CurrentXp"},color: "#92f3a4"},{text: "/",color: "#92f3a4"},{"score": {"name": "@s","objective": "NextXp"},color: "#92f3a4"},{text: " (",color: "#92f3a4"},{"score":{"name":"int","objective":"XpRate"},color:"#ffd728"},{text: ".",color:"#ffd728"},{"score":{"name":"float","objective":"XpRate"},color:"#ffd728"},{text: "%",color:"#ffd728"},{text: ")",color:"#92f3a4"},{text: "  |  ",color:"gray"},\
{text:"\uE006\uf101"},{text:"MP ",color:"#9279d3"},{"score": {"name":"@s", "objective":"ShowCurrentMP"},color:"#9279d3"},{text:"/",color:"#9279d3"},{"score": {"name":"@s", "objective":"ShowMaxMP"},color:"#9279d3"}]

#execute if score @s Absorption matches 1.. unless score @s ShowXpTime matches 0.. run title @s actionbar [\
{text:"\uE000\uf101"},{text:"HP ",color:"#e6a4a7"},{"score": {"name":"@s", "objective":"ShowCurrentHealth"},color:"#e6a4a7"},{text:"+",color:"#f5de84"},{"score":{"name":"@s", "objective":"ShowAbsorption"},color:"#f5de84"},{text:"/",color:"#e6a4a7"},{"score": {"name":"@s", "objective":"ShowMaxHealth"},color:"#e6a4a7"},\
{text:"  |  ",color: "gray"},{text:"["},{"score": {"name": "@s","objective": "CurrentLv"},color: "#42ffff"},{text: "] "},{"score": {"name": "@s","objective": "CurrentXp"},color: "#92f3a4"},{text: "/",color: "#92f3a4"},{"score": {"name": "@s","objective": "NextXp"},color: "#92f3a4"},{text: " (",color: "#92f3a4"},{"score":{"name":"int","objective":"XpRate"},color:"#ffd728"},{text: ".",color:"#ffd728"},{"score":{"name":"float","objective":"XpRate"},color:"#ffd728"},{text: "%",color:"#ffd728"},{text: ")",color:"#92f3a4"},{text: "  |  ",color:"gray"},\
{text:"\uE006\uf101"},{text:"MP ",color:"#9279d3"},{"score": {"name":"@s", "objective":"ShowCurrentMP"},color:"#9279d3"},{text:"/",color:"#9279d3"},{"score": {"name":"@s", "objective":"ShowMaxMP"},color:"#9279d3"}]



##+ ステータス一覧をアイテムとして置く
# reset
    data modify storage status: book set value {hpp: '', strp: '', ccp: '', cdp: '', defp: '', spdp: '', mpp: '', luckp: '', dmgp: '', xpp: 0, attack: 0, guard: 0, magic: 0, pm_guard: ''}

# まず storage に入れる
    # 各ステータス
        execute store result storage status: book.hp int 1 run scoreboard players get @s ShowMaxHealth
        execute store result storage status: book.str int 1 run scoreboard players get @s act_Strength
        execute store result storage status: book.cc int 1 run scoreboard players get @s act_CritChance
        execute store result storage status: book.cd int 1 run scoreboard players get @s act_CritDamage
        execute store result storage status: book.def int 1 run scoreboard players get @s act_Defence
        execute store result storage status: book.spd int 1 run scoreboard players get @s act_Speed
        execute store result storage status: book.mp int 1 run scoreboard players get @s ShowMaxMP
        execute store result storage status: book.luck int 1 run scoreboard players get @s act_Luck
        execute store result storage status: book.dmg int 1 run scoreboard players get @s act_Damage

        # Lv, Exp
        execute store result storage status: book.lv int 1 run scoreboard players get @s CurrentLv
        execute store result storage status: book.xpc int 1 run scoreboard players get @s CurrentXp
        execute store result storage status: book.xpm int 1 run scoreboard players get @s NextXp
        execute store result storage status: book.xpri int 1 run scoreboard players get int XpRate
        execute store result storage status: book.xprf int 1 run scoreboard players get float XpRate

        # PN
        loot replace block 0 0 0 container.0 loot entity:player_head
        data modify storage status: book.name set from block 0 0 0 Items[{Slot:0b}].components.minecraft:profile.name

    # 職業関連
        execute if score @s occupation matches 0 run data modify storage status: book.occupation set value "status-book.occupation.0.name"
        execute if score @s occupation matches 0 run data modify storage status: book.lore set value "status-book.occupation.0.lore"
        execute if score @s occupation matches 1 run data modify storage status: book.occupation set value "status-book.occupation.1.name"
        execute if score @s occupation matches 1 run data modify storage status: book.lore set value "status-book.occupation.1.lore"
        execute if score @s occupation matches 2 run data modify storage status: book.occupation set value "status-book.occupation.2.name"
        execute if score @s occupation matches 2 run data modify storage status: book.lore set value "status-book.occupation.2.lore"
        execute if score @s occupation matches 3 run data modify storage status: book.occupation set value "status-book.occupation.3.name"
        execute if score @s occupation matches 3 run data modify storage status: book.lore set value "status-book.occupation.3.lore"
        execute if score @s occupation matches 4 run data modify storage status: book.occupation set value "status-book.occupation.4.name"
        execute if score @s occupation matches 4 run data modify storage status: book.lore set value "status-book.occupation.4.lore"
        execute if score @s occupation matches 5 run data modify storage status: book.occupation set value "status-book.occupation.5.name"
        execute if score @s occupation matches 5 run data modify storage status: book.lore set value "status-book.occupation.5.lore"

    # 特殊効果
        # リセット
            scoreboard players set xpp Temp 0
            scoreboard players set attack Temp 0
            scoreboard players set guard Temp 0
            scoreboard players set magic Temp 0

        # 職業
            # 狂戦士
                execute if score @s occupation matches 2 run scoreboard players add guard Temp 8

            # 護神
                execute if score @s occupation matches 3 run scoreboard players remove guard Temp 13

            # 瑞祥
                execute if score @s occupation matches 5 run data modify storage status: book.ccp set value '§3(+5%)'
                execute if score @s occupation matches 5 run data modify storage status: book.luckp set value '§3(+10%)'

        # 防具
            # reset
                scoreboard players set $armor_id_head _ 0
            
            # 代表して頭の id をスコアに保存
                data modify storage damageapi: armor set from entity @s equipment
                execute store result score $armor_id_head _ run data get storage damageapi: armor.head.components."minecraft:repair_cost"
            
            # 0 じゃなければ探索開始
                execute unless score $armor_id_head _ matches ..1113004 run function damageapi:status/player/search/armor/.root

        # アイテム
            # reset
                scoreboard players set $shard_id_1 _ 0
                scoreboard players set $shard_id_2 _ 0
                scoreboard players set $shard_id_3 _ 0

            # データ取得
                data modify storage damageapi: shard set from entity @s Inventory

            # 各値を取得して実行
                execute store result score $shard_id _ run data get storage damageapi: shard[{Slot: 9b}].components.minecraft:repair_cost
                function damageapi:status/player/search/shard/.root

                execute store result score $shard_id _ run data get storage damageapi: shard[{Slot: 10b}].components.minecraft:repair_cost
                function damageapi:status/player/search/shard/.root
                
                execute store result score $shard_id _ run data get storage damageapi: shard[{Slot: 11b}].components.minecraft:repair_cost
                function damageapi:status/player/search/shard/.root

            # 魔法・ブースト (+20%)
                execute if predicate magic:is_magic_boost.1 run scoreboard players add magic Temp 20

        # 代入
            execute store result storage status: book.xpp int 1 run scoreboard players get xpp Temp
            execute store result storage status: book.attack int 1 run scoreboard players get attack Temp
            execute store result storage status: book.guard int 1 run scoreboard players get guard Temp
            execute if score guard Temp matches 1.. run data modify storage status: book.pm_guard set value '§c+'
            execute if score guard Temp matches ..0 run data modify storage status: book.pm_guard set value ''
            execute store result storage status: book.magic int 1 run scoreboard players get magic Temp

# clear する
clear @s *[minecraft:custom_data={"show_stats": 1}]

# マクロで配置
function damageapi:status/player/macro/stat.list with storage status: book

# リログとか死んだときとか用に消します
execute at @s run kill @e[type=minecraft:item, distance=..2, predicate=entity:is_stats_book]
