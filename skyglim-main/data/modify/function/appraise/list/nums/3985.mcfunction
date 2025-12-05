###* Lore 操作
# まずは全削除
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" set value []

# 一行目を追加
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value '{"text": "************************************", "color": "dark_gray", "italic": false}'

###? ステータス計算
###? 順番は、[DMG > HP > STR > CC > CD > DEF > SPD > MP > LUCK] の順番
# 合計のやつの初期化する
scoreboard players set rolls Temp 0
scoreboard players set rolls_total Temp 0

# 基礎値を設定して共通ファイルを実行する
scoreboard players set base Temp 20
function modify:appraise/list/status/dmg

#scoreboard players set base Temp 100
#function modify:appraise/list/status/hp

scoreboard players set base Temp 10
function modify:appraise/list/status/str

scoreboard players set base Temp 5
function modify:appraise/list/status/cc

scoreboard players set base Temp 40
function modify:appraise/list/status/cd

#scoreboard players set base Temp 50
#function modify:appraise/list/status/def

#scoreboard players set base Temp 
#function modify:appraise/list/status/spd

#scoreboard players set base Temp 75
#function modify:appraise/list/status/mp

#scoreboard players set base Temp 
#function modify:appraise/list/status/luck

###* アイテム名変更
# 平均を導出
scoreboard players operation rolls_total Temp /= rolls Temp

# 設定
execute store result storage modify: appraise.average int 1 run scoreboard players get rolls_total Temp
data modify storage modify: appraise.name set value '騎士の弓'

function modify:appraise/list/macro/set_name with storage modify: appraise

###? 残りの Lore 付与
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value '{"text": "------------------------", "color": "dark_gray", "italic": false}'
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value '{"text": "遺跡から出土した鎧。", "color": "#ffffff", "italic": false}'
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value '{"text": "現役の鎧としてまだまだ使えそう。", "color": "#ffffff", "italic": false}'
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value '{"text": ""}'
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value '{"text": "Legendary", "color": "#ffd728", "italic": false, "bold": true}'
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value '{"text": "------------------------", "color": "dark_gray", "italic": false}'

###* その他
# 鑑定済みにする
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.appraise set value 2

# 演出とか
tellraw @s [{"text": "\uE010 ","color": "gray"},{"text": "鑑定完了！","color": "#44ddf4"}]
execute at @s run playsound minecraft:entity.player.levelup voice @a ~ ~-1 ~ 1 1.5
execute at @s run playsound minecraft:block.anvil.use voice @a ~ ~-1 ~ 0.5 0.5

