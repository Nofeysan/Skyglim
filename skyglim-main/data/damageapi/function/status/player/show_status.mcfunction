##> damageapi:player_tick
##* 
##* I.  actionbar に表示
##* II. stats book を作成する
##* 

##+ actionbar 表示
###* 表示用計算
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

###* 表示
# 経験値表示を減らす
scoreboard players remove @s[scores={ShowXpTime=0..}] ShowXpTime 1
execute if score @s ShowXpTime matches -1 run scoreboard players set @s ShowXp 0

# XP 取得を表示する
execute unless score @s Absorption matches 1.. if score @s ShowXpTime matches 0.. run title @s actionbar [\
{text:"\uE000\uf101"},{text:"HP ",color:"#e6a4a7"},{"score": {"name":"@s", "objective":"ShowCurrentHealth"},color:"#e6a4a7"},{text:"/",color:"#e6a4a7"},{"score": {"name":"@s", "objective":"ShowMaxHealth"},color:"#e6a4a7"},\
{text:"  |  ",color: "gray"},{text:"["},{"score": {"name": "@s","objective": "CurrentLv"},color: "#42ffff"},{text: "] "},{"score": {"name": "@s","objective": "CurrentXp"},color: "#92f3a4"},{text: "/",color: "#92f3a4"},{"score": {"name": "@s","objective": "NextXp"},color: "#92f3a4"},{text: " +",color: "#c5edff"},{"score": {"name": "@s","objective": "ShowXp"},color: "#c5edff"},{text: "XP",color: "#c5edff"},{text: " (",color: "#92f3a4"},{"score":{"name":"int","objective":"XpRate"},color:"#ffd728"},{text: ".",color:"#ffd728"},{"score":{"name":"float","objective":"XpRate"},color:"#ffd728"},{text: "%",color:"#ffd728"},{text: ")",color:"#92f3a4"},{text: "  |  ",color:"gray"},\
{text:"\uE006\uf101"},{text:"MP ",color:"#9279d3"},{"score": {"name":"@s", "objective":"ShowCurrentMP"},color:"#9279d3"},{text:"/",color:"#9279d3"},{"score": {"name":"@s", "objective":"ShowMaxMP"},color:"#9279d3"}]

execute if score @s Absorption matches 1.. if score @s ShowXpTime matches 0.. run title @s actionbar [\
{text:"\uE000\uf101"},{text:"HP ",color:"#e6a4a7"},{"score": {"name":"@s", "objective":"ShowCurrentHealth"},color:"#e6a4a7"},{text:"+",color:"#f5de84"},{"score":{"name":"@s", "objective":"ShowAbsorption"},color:"#f5de84"},{text:"/",color:"#e6a4a7"},{"score": {"name":"@s", "objective":"ShowMaxHealth"},color:"#e6a4a7"},\
{text:"  |  ",color: "gray"},{text:"["},{"score": {"name": "@s","objective": "CurrentLv"},color: "#42ffff"},{text: "] "},{"score": {"name": "@s","objective": "CurrentXp"},color: "#92f3a4"},{text: "/",color: "#92f3a4"},{"score": {"name": "@s","objective": "NextXp"},color: "#92f3a4"},{text: " +",color: "#c5edff"},{"score": {"name": "@s","objective": "ShowXp"},color: "#c5edff"},{text: "XP",color: "#c5edff"},{text: " (",color: "#92f3a4"},{"score":{"name":"int","objective":"XpRate"},color:"#ffd728"},{text: ".",color:"#ffd728"},{"score":{"name":"float","objective":"XpRate"},color:"#ffd728"},{text: "%",color:"#ffd728"},{text: ")",color:"#92f3a4"},{text: "  |  ",color:"gray"},\
{text:"\uE006\uf101"},{text:"MP ",color:"#9279d3"},{"score": {"name":"@s", "objective":"ShowCurrentMP"},color:"#9279d3"},{text:"/",color:"#9279d3"},{"score": {"name":"@s", "objective":"ShowMaxMP"},color:"#9279d3"}]

# XP 表示なし
execute unless score @s Absorption matches 1.. unless score @s ShowXpTime matches 0.. run title @s actionbar [\
{text:"\uE000\uf101"},{text:"HP ",color:"#e6a4a7"},{"score": {"name":"@s", "objective":"ShowCurrentHealth"},color:"#e6a4a7"},{text:"/",color:"#e6a4a7"},{"score": {"name":"@s", "objective":"ShowMaxHealth"},color:"#e6a4a7"},\
{text:"  |  ",color: "gray"},{text:"["},{"score": {"name": "@s","objective": "CurrentLv"},color: "#42ffff"},{text: "] "},{"score": {"name": "@s","objective": "CurrentXp"},color: "#92f3a4"},{text: "/",color: "#92f3a4"},{"score": {"name": "@s","objective": "NextXp"},color: "#92f3a4"},{text: " (",color: "#92f3a4"},{"score":{"name":"int","objective":"XpRate"},color:"#ffd728"},{text: ".",color:"#ffd728"},{"score":{"name":"float","objective":"XpRate"},color:"#ffd728"},{text: "%",color:"#ffd728"},{text: ")",color:"#92f3a4"},{text: "  |  ",color:"gray"},\
{text:"\uE006\uf101"},{text:"MP ",color:"#9279d3"},{"score": {"name":"@s", "objective":"ShowCurrentMP"},color:"#9279d3"},{text:"/",color:"#9279d3"},{"score": {"name":"@s", "objective":"ShowMaxMP"},color:"#9279d3"}]

execute if score @s Absorption matches 1.. unless score @s ShowXpTime matches 0.. run title @s actionbar [\
{text:"\uE000\uf101"},{text:"HP ",color:"#e6a4a7"},{"score": {"name":"@s", "objective":"ShowCurrentHealth"},color:"#e6a4a7"},{text:"+",color:"#f5de84"},{"score":{"name":"@s", "objective":"ShowAbsorption"},color:"#f5de84"},{text:"/",color:"#e6a4a7"},{"score": {"name":"@s", "objective":"ShowMaxHealth"},color:"#e6a4a7"},\
{text:"  |  ",color: "gray"},{text:"["},{"score": {"name": "@s","objective": "CurrentLv"},color: "#42ffff"},{text: "] "},{"score": {"name": "@s","objective": "CurrentXp"},color: "#92f3a4"},{text: "/",color: "#92f3a4"},{"score": {"name": "@s","objective": "NextXp"},color: "#92f3a4"},{text: " (",color: "#92f3a4"},{"score":{"name":"int","objective":"XpRate"},color:"#ffd728"},{text: ".",color:"#ffd728"},{"score":{"name":"float","objective":"XpRate"},color:"#ffd728"},{text: "%",color:"#ffd728"},{text: ")",color:"#92f3a4"},{text: "  |  ",color:"gray"},\
{text:"\uE006\uf101"},{text:"MP ",color:"#9279d3"},{"score": {"name":"@s", "objective":"ShowCurrentMP"},color:"#9279d3"},{text:"/",color:"#9279d3"},{"score": {"name":"@s", "objective":"ShowMaxMP"},color:"#9279d3"}]



##+ ステータス一覧をアイテムとして置く
# まずstorageに入れる
execute store result storage status: book.hp int 1 run scoreboard players get @s ShowMaxHealth
execute store result storage status: book.str int 1 run scoreboard players get @s act_Strength
execute store result storage status: book.cc int 1 run scoreboard players get @s act_CritChance
execute store result storage status: book.cd int 1 run scoreboard players get @s act_CritDamage
execute store result storage status: book.def int 1 run scoreboard players get @s act_Defence
execute store result storage status: book.spd int 1 run scoreboard players get @s act_Speed
execute store result storage status: book.mp int 1 run scoreboard players get @s ShowMaxMP
execute store result storage status: book.luck int 1 run scoreboard players get @s act_Luck
execute store result storage status: book.dmg int 1 run scoreboard players get @s act_Damage
execute store result storage status: book.lv int 1 run scoreboard players get @s CurrentLv
execute store result storage status: book.xpc int 1 run scoreboard players get @s CurrentXp
execute store result storage status: book.xpm int 1 run scoreboard players get @s NextXp
execute store result storage status: book.xpri int 1 run scoreboard players get int XpRate
execute store result storage status: book.xprf int 1 run scoreboard players get float XpRate
data modify storage status: book.name set from block 0 0 0 Items[{Slot:0b}].components.minecraft:profile.name

execute if score @s occupation matches 0 run data modify storage status: book.occupation set value "§7🜸 未設定"
execute if score @s occupation matches 0 run data modify storage status: book.lore set value "§7特記事項なし"
execute if score @s occupation matches 1 run data modify storage status: book.occupation set value "§3¤ 天弓"
execute if score @s occupation matches 1 run data modify storage status: book.lore set value "§7遠距離攻撃強化"
execute if score @s occupation matches 2 run data modify storage status: book.occupation set value "§c⚔ 狂戦士"
execute if score @s occupation matches 2 run data modify storage status: book.lore set value "§7近接攻撃強化・防御、魔法攻撃弱体化"
execute if score @s occupation matches 3 run data modify storage status: book.occupation set value "§2∅ 護神"
execute if score @s occupation matches 3 run data modify storage status: book.lore set value "§7被ダメージ減少"
execute if score @s occupation matches 4 run data modify storage status: book.occupation set value "§5‽ 魔術師"
execute if score @s occupation matches 4 run data modify storage status: book.lore set value "§7魔法攻撃強化・近接攻撃弱体化"
execute if score @s occupation matches 5 run data modify storage status: book.occupation set value "§b☆ 瑞祥"
execute if score @s occupation matches 5 run data modify storage status: book.lore set value "§7会心率増加"

# clear する
clear @s *[minecraft:custom_data={"show_stats": 1}]

# マクロで配置
function damageapi:status/player/macro/stat.list with storage status: book

# リログとか死んだときとか用に消します
execute at @s run kill @e[type=minecraft:item, distance=..2, predicate=entity:is_stats_book]

