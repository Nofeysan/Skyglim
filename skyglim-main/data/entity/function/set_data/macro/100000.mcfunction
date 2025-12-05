# UUID storage に格納する
$data modify storage enemy: list.$(uuid) set value \
{\
    data: {\
        "status": {\
            "max_hp": 10000000,\
            "current_hp": 10000000,\
            \
            "dmg": 5,\
            "str": 2,\
            "def": 1,\
            \
            "xp": 864,\
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
