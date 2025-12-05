##> entity:set_data/macro/root
##* 
##* current_hp = max_hp にすること・hp は *100 で指定すること
##* 
##* 

# UUID storage に格納する
$data modify storage enemy: list.$(uuid) set value \
{\
    data: {\
        "status": {\
            "max_hp": 3000,\
            "current_hp": 3000,\
            \
            "dmg": 4,\
            "str": 3,\
            "def": 1,\
            \
            "xp": 1,\
            \
            "lore1": "ここで朽ち果ててしまった採掘士。",\
            "lore2": "肉体はそのまま腐ってしまった。",\
            \
            "loot": "1/1-1"\
        }\
    }\
}

# tag 付与
tag @s add enemy
tag @s add debug

# 名前を設定
data modify entity @s CustomName set value '{"text": "不死の採掘士","color": "#ffffff"}'
data modify entity @s CustomNameVisible set value true
