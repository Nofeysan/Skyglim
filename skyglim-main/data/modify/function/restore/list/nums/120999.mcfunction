###* Lore 操作
# フレーバーテキストを保存
data modify storage modify: lore.-1 set from block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore"[-1]
data modify storage modify: lore.-2 set from block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore"[-2]
data modify storage modify: lore.-3 set from block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore"[-3]
data modify storage modify: lore.-4 set from block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore"[-4]
data modify storage modify: lore.-5 set from block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore"[-5]
data modify storage modify: lore.-6 set from block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore"[-6]

# まずは全削除
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" set value []

# 一行目を追加
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value {text: "************************************", color: "dark_gray", italic: false}

###? ステータス計算
###? 順番は、[DMG > HP > STR > CC > CD > DEF > SPD > MP > LUCK] の順番
# 合計のやつの初期化する
scoreboard players set rolls Temp 0
scoreboard players set rolls_total Temp 0

# 基礎値を設定して共通ファイルを実行する
scoreboard players set base Temp 5
function modify:restore/list/status/dmg

#scoreboard players set base Temp 
#function modify:restore/list/status/hp

scoreboard players set base Temp 20
function modify:restore/list/status/str

scoreboard players set base Temp 12
function modify:restore/list/status/cc

scoreboard players set base Temp 50
function modify:restore/list/status/cd

#scoreboard players set base Temp 
#function modify:restore/list/status/def

#scoreboard players set base Temp 
#function modify:restore/list/status/spd

scoreboard players set base Temp 15
function modify:restore/list/status/mp

#scoreboard players set base Temp 
#function modify:restore/list/status/luck

###* アイテム名変更
# 平均を導出
scoreboard players operation rolls_total Temp /= rolls Temp

# 設定
execute store result storage modify: restore.average int 1 run scoreboard players get rolls_total Temp
data modify storage modify: restore.name set value '異界の欠片'

function modify:restore/list/macro/set_name with storage modify: restore

###? 残りの Lore 付与
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append from storage modify: lore.-6
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append from storage modify: lore.-5
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append from storage modify: lore.-4
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append from storage modify: lore.-3
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append from storage modify: lore.-2
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append from storage modify: lore.-1

#data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value {text: "------------------------", color: "dark_gray", italic: false}
#data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value {text: "異世界から流れ着いた未知の欠片。", color: "#ffffff", italic: false}
#data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value {text: "底知れぬ力が眠っている。", color: "#ffffff", italic: false}
#data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value {text: ""}
#function modify:restore/list/rarity_lore/set
#data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value {text: "------------------------", color: "dark_gray", italic: false}

###* その他
# 鑑定済みにする
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.restore set value 2

# 演出とか
tellraw @s [{text: "\uE010 ",color: "gray"},{text: "鑑定完了！",color: "#44ddf4"}]
execute at @s run playsound minecraft:entity.player.levelup voice @a ~ ~-1 ~ 1 1.5
execute at @s run playsound minecraft:block.anvil.use voice @a ~ ~-1 ~ 0.5 0.5
