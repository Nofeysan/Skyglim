#   json用
#
#   <type> sword: 1, s.sword: 2, axe: 3, bow: -1, crossbow: -2, armor: 4/5/6/7, shard: 9
#   <rarity> 1: Normal, 2: Rare, 3: Epic, 4: Legendary, 5: Mythic
#   <id> repair_cost (スプシ参照)
#   <status> ["dmg", "hp", "str", "cc", "cd", "def", "spd", "mp", "luck"], 設定なしなら 0 を記入
#   <has_ability> 特殊効果の行数 [0, 1, 2]
#   <count> 同一ステージ内での同レアリティのシリーズ数
#   <shop> token ショップに追加する場合の json を出力するかどうか [boolean]
#

import json
import os


# ディレクトリが存在しなかったら作成する関数定義
def createdir(path): 
    if not os.path.isdir(os.path.dirname(path)):
        os.makedirs(os.path.dirname(path))

# データベース読み込み
with open('item_database.json', encoding='utf-8') as f:
    item_database = json.load(f)

# datapack空間内への相対パス
#namespace_path = 'C:\\Skyglim-dev\\Skyglim\\skyglim-main\\data\\modify\\function\\restore\\list\\nums\\' # 本番環境
#namespace_path = 'E:\\Skyglim-dev\\Skyglim\\skyglim-main\\data\\modify\\function\\restore\\list\\nums\\' # 本番環境
namespace_path = 'C:\\Skyglim-dev\\py\\generated\\restore\\' # テスト用

# 実行回数を初期化
i = 0

###+ definition ###
def getItemId(rarity, type, count, stage):
    rarity_head = ["n-", "r-", "e-", "l-", "m-"]
    item_type = ["sword", "s.sword", "axe", "head", "chest", "legs", "boots", "", "shard", "crossbow", "bow", ""]

    return "stage." + stage + "." + rarity_head[rarity -1] + item_type[type -1] + "." + str(count) + ".name"

#+#################

###% generate ###
def createLines(id, stats, rarity, type, count, macro, model, trim):
    lines = []
    
    # header
    lines.append(f'#> modify:restore/list/nums/{id}\n')
    lines.append('# \n# 1. 基礎値を設定する\n# 2. アイテム名の translate path を入れる\n# 3. id/item_model を設定する\n# ')
    
    # lore 操作
    lines.append('\n\n##* Lore 操作\n# フレーバーテキストを保存')
    
    for l in [-1, -2, -3, -4, -5, -6]:
        lines.append(f'\ndata modify storage modify: lore.{l} set from block ~ ~-1 ~ Items[{{Slot: 13b}}].components."minecraft:lore"[{l}]')
    
    lines.append('\n\n# まずは全削除')
    lines.append('\ndata modify block ~ ~-1 ~ Items[{Slot: 13b}].components."minecraft:lore" set value []')
    lines.append('\n\n# 一行目を追加')
    lines.append('\ndata modify block ~ ~-1 ~ Items[{Slot: 13b}].components."minecraft:lore" append value {translate: "common.lore.line.1", color: "dark_gray", italic: false}')
    
    # status
    lines.append('\n\n###? ステータス計算\n###? 順番は、[DMG > HP > STR > CC > CD > DEF > SPD > MP > LUCK] の順番')
    lines.append('\n# 合計のやつの初期化する')
    lines.append('\nscoreboard players set rolls Temp 0\nscoreboard players set rolls_total Temp 0')
    
    stat_name = ["dmg", "hp", "str", "cc", "cd", "def", "spd", "mp", "luck"]
    name_count = -1
    
    for s in stats:
        name_count += 1
        if s == 0:
            lines.append(f'\n\n#scoreboard players set base Temp \n#function modify:restore/list/status/{stat_name[name_count]}')
        else:
            lines.append(f'\n\nscoreboard players set base Temp {s}\nfunction modify:restore/list/status/{stat_name[name_count]}')
    
    # name
    lines.append('\n\n##* アイテム名変更')
    lines.append('\n# 平均を導出\nscoreboard players operation rolls_total Temp /= rolls Temp')
    lines.append('\n\n# 設定')
    lines.append('\nexecute store result storage modify: restore.average int 1 run scoreboard players get rolls_total Temp')
    lines.append(f"\ndata modify storage modify: restore.name set value '{getItemId(rarity, type, count, stage)}'")
    
    # 武器種ごとの設定
    lines.append('\n\n##* 武器種ごとの共通設定')
    
    type_list = [
        '',
        f'\nfunction modify:restore/list/nums/type/sword {macro}',
        f'\nfunction modify:restore/list/nums/type/s.sword {macro}',
        f'\nfunction modify:restore/list/nums/type/axe {macro}',
        f'\nfunction modify:restore/list/nums/type/armor {macro}',
        f'\nfunction modify:restore/list/nums/type/armor {macro}',
        f'\nfunction modify:restore/list/nums/type/armor {macro}',
        f'\nfunction modify:restore/list/nums/type/armor {macro}',
        '',
        f'\nfunction modify:restore/list/nums/type/shard {macro}',
        f'\nfunction modify:restore/list/nums/type/crossbow {macro}',
        f'\nfunction modify:restore/list/nums/type/bow {macro}',
    ]
    
    lines.append(type_list[type])
    
    # custom_model_data
    if not(model == False):
        lines.append('\n\n# custom_model_data')
        lines.append(f'\ndata modify block ~ ~-1 ~ Items[{{Slot: 13b}}].components."minecraft:custom_model_data".strings set value ["{model}"]')
    
    # trim
    if not(trim == False):
        lines.append('\n\n# trim')
        lines.append(f'\ndata modify block ~ ~-1 ~ Items[{{Slot: 13b}}].components."minecraft:trim" merge value {trim}')
    
    lines.append('\n\n#* もし avg. が 80 以上なら glint 付与')
    lines.append('\nexecute if score rolls_total Temp matches 80.. run data modify block ~ ~-1 ~ Items[{Slot: 13b}].components."minecraft:enchantment_glint_override" set value true')
    lines.append('\n\nfunction modify:restore/list/macro/set_name with storage modify: restore')
    
    # 残りの lore 処理
    lines.append('\n\n##? 残りの Lore 付与')
    
    for l in [-1, -2, -3, -4, -5, -6]:
        lines.append(f'\ndata modify block ~ ~-1 ~ Items[{{Slot: 13b}}].components."minecraft:lore" append from storage modify: lore.{l}')
    
    # others
    lines.append('\n\n##* その他')
    lines.append('\n# 鑑定済みにする')
    lines.append('\ndata modify block ~ ~-1 ~ Items[{Slot: 13b}].components."minecraft:custom_data".data.restore set value 2')
    lines.append('\n\n# 演出とか')
    lines.append('\nfunction modify:restore/list/nums/restore-done\n')    
    
    return "".join(lines)

#%###############

# 各アイテムの処理
for stage, data_list in item_database.items():
    
    for data in data_list:
        __type__ = data["type"]
        __rarity__ = data["rarity"]
        __id__ = data["id"]
        __status__ = data["status"]
        __has_ability__ = data["has_ability"]
        __count__ = str(data["count"])
        __macro__ = data["macro"]
        __model__ = data.get("model", False)
        __trim__ = data.get("trim", False)
    
        # path
        path = namespace_path + str(__id__) + ".mcfunction"
        
        # ディレクトリ作成
        createdir(path)
        
        # output
        output = createLines(__id__, __status__, __rarity__, __type__, __count__, __macro__, __model__, __trim__)
        
        # 書き込み
        with open(path, 'w', encoding= 'utf-8') as f:
            f.write(output)
        
        # 実行結果を表示
        i += 1
        print(f'[{i}] Generated: "nums/{__id__}.mcfunction"')
