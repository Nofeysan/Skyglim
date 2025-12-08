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
            "max_hp": 20000,\
            "current_hp": 20000,\
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
data modify entity @s CustomName set value '{text: "スケルトン",color: "#ffffff"}'
data modify entity @s CustomNameVisible set value true
