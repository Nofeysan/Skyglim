# UUID storage に格納する
$data modify storage enemy: list.$(uuid) set value \
{\
    data: {\
        "status": {\
            "max_hp": 100000,\
            "current_hp": 100000,\
            \
            "dmg": 15,\
            "str": 10,\
            "def": 2,\
            \
            "xp": 15,\
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
