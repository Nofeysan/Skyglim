##> damageapi:status/player/show_status
##* 
##* <storage> status: book.*
##* 
##* 

$item replace entity @s player.crafting.0 with minecraft:book[\
minecraft:custom_name='[\
    {\
        text: "◆◇◆ ",\
        color: "#94d3e6",\
        italic: false\
    },\
    {\
        text: "$(name)",\
        color: "#c183d4"\
    },\
    {\
        text: "\'s Status ◆◇◆",\
        color: "#94d3e6"\
    }\
]',\
minecraft:lore=[\
    '[\
        {\
            text: "************************************",\
            color: "dark_gray",\
            italic: false\
        }\
    ]',\
    '[\
        {\
            text: "",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            text: "\\uf102\\uf102職業",\
            color: "#b6c6f2"\
        },\
        {\
            text: " \\uE010 ",\
            color: "gray"\
        },\
        {\
            text: "$(occupation)",\
            color: "#ffffff"\
        }\
    ]',\
    '[\
        {\
            text: "",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            text: "\\uf102\\uf102* $(lore)",\
            color: "gray"\
        }\
    ]',\
    '{text: ""}',\
    '[\
        {\
            text: "",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            text: "\\uf102\\uf102\\uE011 経験値 \\uE010",\
            color: "#92f3a4"\
        },\
        {\
            text: "",\
            color: "gray"\
        }\
    ]',\
    '[\
        {\
            text: "\\uf102\\uf102[",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            text: "$(lv)",\
            color: "#42ffff"\
        },\
        {\
            text: "] ",\
            color: "#ffffff"\
        },\
        {\
            text: "$(xpc)/$(xpm) (",\
            color: "#92f3a4"\
        },\
        {\
            text: "$(xpri).$(xprf)%",\
            color: "#ffd728"\
        },\
        {\
            text: ")",\
            color: "#92f3a4"\
        }\
    ]',\
    '{text: ""}',\
    '[\
        {\
            text: "\\uE000 ",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            text: "最大体力 (HP)",\
            color: "#e094d7"\
        },\
        {\
            text: " \\uE010 ",\
            color: "gray"\
        },\
        {\
            text: "$(hp)",\
            color: "#ffffff"\
        }\
    ]',\
    '[\
        {\
            text: "\\uE001 ",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            text: "攻撃力 (STR)",\
            color: "#d94262"\
        },\
        {\
            text: " \\uE010 ",\
            color: "gray"\
        },\
        {\
            text: "$(str)",\
            color: "#ffffff"\
        }\
    ]',\
    '[\
        {\
            text: "\\uE002 ",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            text: "会心率 (CC)",\
            color: "#94d3e6"\
        },\
        {\
            text: " \\uE010 ",\
            color: "gray"\
        },\
        {\
            text: "$(cc)%",\
            color: "#ffffff"\
        }\
    ]',\
    '[\
        {\
            text: "\\uE003 ",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            text: "会心ダメージ (CD)",\
            color: "#66a5b8"\
        },\
        {\
            text: " \\uE010 ",\
            color: "gray"\
        },\
        {\
            text: "+$(cd)%",\
            color: "#ffffff"\
        }\
    ]',\
    '[\
        {\
            text: "\\uE004 ",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            text: "防御力 (DEF)",\
            color: "#5dccab"\
        },\
        {\
            text: " \\uE010 ",\
            color: "gray"\
        },\
        {\
            text: "$(def)",\
            color: "#ffffff"\
        }\
    ]',\
    '[\
        {\
            text: "\\uE005 ",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            text: "移動速度 (SPD)",\
            color: "#44ddf4"\
        },\
        {\
            text: " \\uE010 ",\
            color: "gray"\
        },\
        {\
            text: "$(spd)",\
            color: "#ffffff"\
        }\
    ]',\
    '[\
        {\
            text: "\\uE006 ",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            text: "魔力 (MP)",\
            color: "#9279d3"\
        },\
        {\
            text: " \\uE010 ",\
            color: "gray"\
        },\
        {\
            text: "$(mp)",\
            color: "#ffffff"\
        }\
    ]',\
    '[\
        {\
            text: "\\uE007 ",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            text: "運 (LUCK)",\
            color: "#bfe493"\
        },\
        {\
            text: " \\uE010 ",\
            color: "gray"\
        },\
        {\
            text: "$(luck)",\
            color: "#ffffff"\
        }\
    ]',\
    '[\
        {\
            text: "\\uE008 ",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            text: "ダメージ (DMG)",\
            color: "#ff4141"\
        },\
        {\
            text: " \\uE010 ",\
            color: "gray"\
        },\
        {\
            text: "$(dmg)",\
            color: "#ffffff"\
        }\
    ]',\
    '[\
        {\
            text: "------------------------",\
            color: "dark_gray",\
            italic: false\
        }\
    ]'\
],\
minecraft:custom_data={"show_stats": 1}]
