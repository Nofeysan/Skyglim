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
#namespace_path = 'C:\\Skyglim-dev\\Skyglim\\skyglim-main\\data\\entity\\loot_table\\mob_drop\\' # 本番環境
namespace_path = 'E:\\Skyglim-dev\\Skyglim\\skyglim-main\\data\\entity\\loot_table\\mob_drop\\' # 本番環境
#namespace_path = 'C:\\Skyglim-dev\\py\\generated\\' # テスト用

# 実行回数を初期化
i = 0

##+ def
# type
# sword: 1, s.sword: 2, axe: 3, bow: -1, crossbow: -2, armor: 4/5/6/7, shard: 9
def getType(type):
    restore_type = ["sword", "short-sword", "axe", "head", "chest", "legs", "boots", "", "shard", "crossbow", "bow", ""]
    item_type = ["sword", "s.sword", "axe", "head", "chest", "legs", "boots", "", "shard", "crossbow", "bow", ""]
    item_type_num = [1, 1, 1, 4, 5, 6, 7, 0, 9, 2, 2]
    return restore_type[type -1], item_type[type -1], item_type_num[type -1]

# path
def setPath(rarity, type, count):
    rarity_head = ["n-", "r-", "e-", "l-", "m-"]
    return rarity_head[rarity -1] + type + "." + count

# Rarity num -> str 
def getRarity(rarity):
    rarity_name = ["Normal", "Rare", "Epic", "Legendary", "Epic"]
    rarity_color = ["#ffffff", "#2f7bea", "#92f3a4", "#ffd728", "#bf69f4"]
    return rarity_name[rarity-1], rarity_color[rarity-1]

def setStats(stat_list, rarity_name, rarity_color):
    # 前後の設定
    lores = [
                { "translate": "restore.item.type." + type_restore , "italic": False, "color": "#f5de84" },
                { "translate": "common.lore.line.1", "color": "dark_gray", "italic": False }
            ]
    
    # 初期値の設定
    count = -1
    stat_name = ["dmg", "hp", "str", "cc", "cd", "def", "spd", "mp", "luck"]
    stat_mark = ["\ue008", "\ue000", "\ue001", "\ue002", "\ue003", "\ue004", "\ue005", "\ue006", "\ue007"]
    stat_color = ["#ff4141", "#e094d7", "#d94262", "#94d3e6", "#66a5b8", "#5dccab", "#44ddf4", "#9279d3", "#bfe493"]
    
    for value in stat_list:
        # 進める
        count += 1
        
        # stats が設定されていたら lore を増やす
        if value != 0:
            
            # 正負でちょっと変える
            if value > 0:
                stats_value = "+" + str(value)
                
            else:
                stats_value = str(value)
            
            lore = [
                { "text": "\uf102" + stat_mark[count] + " ", "color": "#ffffff", "italic": False },
                { "translate": "common.status." + stat_name[count] , "color": stat_color[count] }, { "text": " \uE010 ", "color": "gray" },
                {  "text": str(stats_value) + "...?", "color": "#aaaaaa" }
            ]
            
            lores.append(lore)
            
    lores.extend(
        [{ "translate": "common.lore.line.2", "color": "dark_gray", "italic": False },
        { "translate": "stage." + stage + "." + item_path + ".lore.1", "color": lore_color(1, __has_ability__), "italic": False },
        { "translate": "stage." + stage + "." + item_path + ".lore.2", "color": lore_color(2, __has_ability__), "italic": False },
        { "text": "" },
        { "text": rarity_name, "color": rarity_color, "italic": False, "bold": True },
        { "translate": "common.lore.line.2", "color": "dark_gray", "italic": False }]
    )
    
    return lores

# color
def lore_color(l, ability):
    if ability - l >= 0:
        return "#94d3e6"
    else:
        return "#ffffff"

# 特殊data
def addData(type, rarity):
    sell_value = [8, 64, 256, 8192, 32768]
    
    if (type == 1):
        return {
            "rarity": rarity,
            "refinement": {
                "ref": -1, "type": type_num,
                "damage": 0, "hp": 0, "str": 0, "cc": 0, "cd": 0,
                "def": 0, "spd": 0, "mp": 0, "luck": 0
            },
            "roll": {
                "damage": -1, "hp": -1, "str": -1, "cc": -1, "cd": -1,
                "def": -1, "spd": -1, "mp": -1, "luck": -1
            },
            "restore": -1,
            "sell": sell_value[rarity -1],
            "enchantment": -1,
            "mainhand": 1
        }
        
    if (type == 2, 4, 5, 6, 7):
            return {
                "rarity": rarity,
                "refinement": {
                    "ref": -1, "type": type_num,
                    "damage": 0, "hp": 0, "str": 0, "cc": 0, "cd": 0,
                    "def": 0, "spd": 0, "mp": 0, "luck": 0
                },
                "roll": {
                    "damage": -1, "hp": -1, "str": -1, "cc": -1, "cd": -1,
                    "def": -1, "spd": -1, "mp": -1, "luck": -1
                },
                "restore": -1,
                "sell": sell_value[rarity -1],
                "enchantment": -1
            }
        
    if (type == 9):
            return {
                "rarity": rarity,
                "refinement": {
                    "ref": -1, "type": type_num,
                    "damage": 0, "hp": 0, "str": 0, "cc": 0, "cd": 0,
                    "def": 0, "spd": 0, "mp": 0, "luck": 0
                },
                "roll": {
                    "damage": -1, "hp": -1, "str": -1, "cc": -1, "cd": -1,
                    "def": -1, "spd": -1, "mp": -1, "luck": -1
                },
                "restore": -1,
                "sell": sell_value[rarity -1],
                "shard": -1
            }

# 各武器への処理
for stage, data_list in item_database.items():
    
    for data in data_list:
        __type__ = data["type"]
        __rarity__ = data["rarity"]
        __id__ = data["id"]
        __status__ = data["status"]
        __has_ability__ = data["has_ability"]
        __count__ = str(data["count"])
    
        ##+ 各データ設定 #############################
        # type
        type_restore, type_id, type_num = getType(__type__)

        # path
        item_path = setPath(__rarity__, type_id, __count__)
    
        # rarity
        r_name, r_color = getRarity(__rarity__)
        #+############################################

        # 書き込み先パスを指定
        path = namespace_path + stage + '\\restore\\' + item_path + '.json'
    
        # ディレクトリ作成
        createdir(path)
    
        # 出力を辞書形式で定義
        output = {
    "type": "minecraft:chest",
    "pools": [
        {
            "rolls": 1,
            "entries": [
                {
                    "type": "minecraft:item",
                    "name": "minecraft:chest",
                    "functions": [
                        {
                            "function": "minecraft:set_name",
                            "name": [
                                { "translate": "restore.not-restored", "color": "gray", "italic": False },
                                { "translate": "stage." + stage + "." + item_path + "." + __count__ + ".name" }
                            ]
                        },
                        {
                            "function": "minecraft:set_lore",
                            "lore": setStats(__status__, r_name, r_color),
                            "mode": "replace_all"
                        },
                        {
                            "function": "minecraft:set_custom_data",
                            "tag": {
                                "status": {
                                    "damage": 0, "hp": 0, "str": 0, "cc": 0, "cd": 0,
                                    "def": 0, "spd": 0, "mp": 0, "luck": 0
                                },
                                "data": addData(type_num, __rarity__)
                            }
                        },
                        {
                            "function": "minecraft:set_components",
                            "components": {
                                "minecraft:attribute_modifiers": [
                                    {
                                        "id": "item.all.def",
                                        "type": "minecraft:armor",
                                        "amount": -1024,
                                        "operation": "add_value",
                                        "slot": "any"
                                    },
                                    {
                                        "id": "item.weapon",
                                        "type": "minecraft:attack_speed",
                                        "amount": 0,
                                        "operation": "add_value",
                                        "slot": "mainhand"
                                    },
                                    {
                                        "id": "item.weapon.notweapon",
                                        "type": "minecraft:attack_damage",
                                        "amount": -1024,
                                        "operation": "add_value",
                                        "slot": "mainhand"
                                    }
                                ],
                                "minecraft:unbreakable": {},
                                "minecraft:enchantments": {},
                                "minecraft:tooltip_display": {
                                    "hidden_components": [
                                        "minecraft:attribute_modifiers",
                                        "minecraft:enchantments",
                                        "minecraft:unbreakable",
                                        "minecraft:charged_projectiles"
                                    ]
                                },
                                "minecraft:repair_cost": __id__,
                                "minecraft:max_stack_size": 1,
                                "minecraft:custom_model_data": {
                                    "strings": [r_name.lower()]
                                },
                                "minecraft:enchantment_glint_override": False
                            }
                        }
                    ]
                }
            ]
        }
    ]
}


    
        # json書き込み
        with open(path, 'w', encoding='utf-8') as f:
            json.dump(output, f, indent='\t', ensure_ascii=False)
        
        # 実行成功回数を表示
        i += 1
        print(f"[{i}] Generated: \"{stage}/restore/{item_path}.json\"")
