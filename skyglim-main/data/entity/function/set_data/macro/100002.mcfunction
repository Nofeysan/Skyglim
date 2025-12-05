# UUID storage に格納する
$data modify storage enemy: list.$(uuid) set value \
{\
    data: {\
        "status": {\
            "max_hp": 30000,\
            "current_hp": 30000,\
            \
            "dmg": 15,\
            "str": 10,\
            "def": 2,\
            \
            "xp": 7,\
            \
            "lore1": "§3テスト用§rのエンティティ。",\
            "lore2": "改行したり§m打ち消したり§rして。",\
            \
            "loot": "debug/test"\
        }\
    }\
}

# tag 付与
tag @s add enemy
tag @s add debug

# 名前を設定
data modify entity @s CustomName set value '{"text": "ゾンビ","color": "#ffffff"}'
data modify entity @s CustomNameVisible set value true
