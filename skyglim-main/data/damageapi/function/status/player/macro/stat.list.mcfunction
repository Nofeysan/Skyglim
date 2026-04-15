#> damageapi:status/player/macro/stat.list
# 
# <storage> status: book.*
# 
# 

$item replace entity @s player.crafting.0 with minecraft:book[\
minecraft:custom_name=[\
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
],\
minecraft:lore=[\
    [\
        {\
            text: "************************************",\
            color: "dark_gray",\
            italic: false\
        }\
    ],\
    [\
        {\
            translate: "status-book.occupation",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            text: "",\
            color: "#b6c6f2"\
        },\
        {\
            text: " \uE010 ",\
            color: "gray"\
        },\
        {\
            translate: "$(occupation)",\
            color: "#ffffff"\
        }\
    ],\
    [\
        {\
            translate: "$(lore)",\
            color: "gray"\
        }\
    ],\
    {text: ""},\
    [\
        {\
            translate: "status-book.exp",\
            color: "#ffffff",\
            italic: false\
        }\
    ],\
    [\
        {\
            text: "\uf102\uf102[",\
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
    ],\
    {text: ""},\
    [\
        {\
            text: "\uE000 ",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            translate: "status-book.hp",\
            color: "#e094d7"\
        },\
        {\
            text: " \uE010 ",\
            color: "gray"\
        },\
        {\
            text: "$(hp)",\
            color: "#ffffff"\
        }\
    ],\
    [\
        {\
            text: "\uE001 ",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            translate: "status-book.str",\
            color: "#d94262"\
        },\
        {\
            text: " \uE010 ",\
            color: "gray"\
        },\
        {\
            text: "$(str)",\
            color: "#ffffff"\
        }\
    ],\
    [\
        {\
            text: "\uE002 ",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            translate: "status-book.cc",\
            color: "#94d3e6"\
        },\
        {\
            text: " \uE010 ",\
            color: "gray"\
        },\
        {\
            text: "$(cc)%",\
            color: "#ffffff"\
        }\
    ],\
    [\
        {\
            text: "\uE003 ",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            translate: "status-book.cd",\
            color: "#66a5b8"\
        },\
        {\
            text: " \uE010 ",\
            color: "gray"\
        },\
        {\
            text: "+$(cd)%",\
            color: "#ffffff"\
        }\
    ],\
    [\
        {\
            text: "\uE004 ",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            translate: "status-book.def",\
            color: "#5dccab"\
        },\
        {\
            text: " \uE010 ",\
            color: "gray"\
        },\
        {\
            text: "$(def)",\
            color: "#ffffff"\
        }\
    ],\
    [\
        {\
            text: "\uE005 ",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            translate: "status-book.spd",\
            color: "#44ddf4"\
        },\
        {\
            text: " \uE010 ",\
            color: "gray"\
        },\
        {\
            text: "$(spd)",\
            color: "#ffffff"\
        }\
    ],\
    [\
        {\
            text: "\uE006 ",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            translate: "status-book.mp",\
            color: "#9279d3"\
        },\
        {\
            text: " \uE010 ",\
            color: "gray"\
        },\
        {\
            text: "$(mp)",\
            color: "#ffffff"\
        }\
    ],\
    [\
        {\
            text: "\uE007 ",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            translate: "status-book.luck",\
            color: "#bfe493"\
        },\
        {\
            text: " \uE010 ",\
            color: "gray"\
        },\
        {\
            text: "$(luck)",\
            color: "#ffffff"\
        }\
    ],\
    [\
        {\
            text: "\uE008 ",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            translate: "status-book.dmg",\
            color: "#ff4141"\
        },\
        {\
            text: " \uE010 ",\
            color: "gray"\
        },\
        {\
            text: "$(dmg)",\
            color: "#ffffff"\
        }\
    ],\
    [\
        {\
            text: "------------------------",\
            color: "dark_gray",\
            italic: false\
        }\
    ]\
],\
minecraft:custom_data={"show_stats": 1}]
