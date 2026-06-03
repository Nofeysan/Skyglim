#> modify:restore/list/nums/
# 
# 1. 基礎値を設定する
# 2. アイテム名の translate path を入れる
# 3. id/item_model を設定する
# 

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
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value {translate: "common.lore.line.1", color: "dark_gray", italic: false}

###? ステータス計算
###? 順番は、[DMG > HP > STR > CC > CD > DEF > SPD > MP > LUCK] の順番
# 合計のやつの初期化する
scoreboard players set rolls Temp 0
scoreboard players set rolls_total Temp 0

# 基礎値を設定して共通ファイルを実行する
scoreboard players set base Temp 10
function modify:restore/list/status/dmg

#scoreboard players set base Temp 
#function modify:restore/list/status/hp

scoreboard players set base Temp 16
function modify:restore/list/status/str

#scoreboard players set base Temp 
#function modify:restore/list/status/cc

scoreboard players set base Temp 2
function modify:restore/list/status/cd

#scoreboard players set base Temp 
#function modify:restore/list/status/def

#scoreboard players set base Temp 
#function modify:restore/list/status/spd

#scoreboard players set base Temp 
#function modify:restore/list/status/mp

#scoreboard players set base Temp 
#function modify:restore/list/status/luck

###* アイテム名変更
# 平均を導出
scoreboard players operation rolls_total Temp /= rolls Temp

# 設定
execute store result storage modify: restore.average int 1 run scoreboard players get rolls_total Temp
data modify storage modify: restore.name set value 'stage.3.n-crossbow.name'

# id と見た目の設定
data modify block ~ ~-1 ~ Items[{Slot:13b}].id set value "minecraft:crossbow"
#data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:item_model" set value ""

# 近接武器なら殴れるようにする
#data remove block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:attribute_modifiers"[-1]

# 振り速度設定
# 剣: -2.4d / 短剣: -1.2d / 斧: -3.5d
#data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:attribute_modifiers"[{id: "minecraft:item.weapon"}].amount set value 

# 見た目の設定
#data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_model_data".strings set value []

# エンチャント追加
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:enchantments" merge value {"minecraft:piercing": 1, "shop:no_ammo": 1, "minecraft:quick_charge": 3}

# もし avg. が 80 以上なら glint 付与
execute if score rolls_total Temp matches 80.. run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:enchantment_glint_override" set value true

function modify:restore/list/macro/set_name with storage modify: restore

###? 残りの Lore 付与
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append from storage modify: lore.-6
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append from storage modify: lore.-5
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append from storage modify: lore.-4
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append from storage modify: lore.-3
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append from storage modify: lore.-2
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append from storage modify: lore.-1

###* その他
# 鑑定済みにする
data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".data.restore set value 2

# 演出とか
function modify:restore/list/nums/restore-done
