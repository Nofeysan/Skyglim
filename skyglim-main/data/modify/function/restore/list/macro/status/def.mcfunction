###*
###* storage> {"restore": {"rate": <0~100%>, "value": <status値>}}
###*

# 値を設定
$data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:custom_data".status.def set value $(value)

# % に応じて色を変える
# + の時
$execute if score base Temp matches 0.. if score rate Temp matches 0..29 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value \
    [\
        {\
            text: "\uf102\uE004 ",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            text: "防御力",\
            color: "#5dccab"\
        },\
        {\
            text: " \uE010 ",\
            color: "gray"\
        },\
        {\
            text: "+$(value)",\
            color: "#55ff55"\
        },\
        {\
            text: " [$(rate)%]",\
            color: "#be2152"\
        }\
    ]

$execute if score base Temp matches 0.. if score rate Temp matches 30..49 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value [{text: "\uf102\uE004 ",color: "#ffffff",italic: false},{text: "防御力",color: "#5dccab"},{text: " \uE010 ",color: "gray"},{text: "+$(value)",color: "#55ff55"},{text: " [$(rate)%]",color: "#f5eb4a"}]
$execute if score base Temp matches 0.. if score rate Temp matches 50..69 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value [{text: "\uf102\uE004 ",color: "#ffffff",italic: false},{text: "防御力",color: "#5dccab"},{text: " \uE010 ",color: "gray"},{text: "+$(value)",color: "#55ff55"},{text: " [$(rate)%]",color: "#40CF84"}]
$execute if score base Temp matches 0.. if score rate Temp matches 70..89 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value [{text: "\uf102\uE004 ",color: "#ffffff",italic: false},{text: "防御力",color: "#5dccab"},{text: " \uE010 ",color: "gray"},{text: "+$(value)",color: "#55ff55"},{text: " [$(rate)%]",color: "#4182fa"}]
$execute if score base Temp matches 0.. if score rate Temp matches 90..100 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value [{text: "\uf102\uE004 ",color: "#ffffff",italic: false},{text: "防御力",color: "#5dccab"},{text: " \uE010 ",color: "gray"},{text: "+$(value)",color: "#55ff55"},{text: " [$(rate)%]",color: "#b4f1f9"}]

# - の時
$execute unless score base Temp matches 0.. if score rate Temp matches 0..29 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value \
    [\
        {\
            text: "\uf102\uE004 ",\
            color: "#ffffff",\
            italic: false\
        },\
        {\
            text: "防御力",\
            color: "#5dccab"\
        },\
        {\
            text: " \uE010 ",\
            color: "gray"\
        },\
        {\
            text: "$(value)",\
            color: "#d94262"\
        },\
        {\
            text: " [$(rate)%]",\
            color: "#be2152"\
        }\
    ]

$execute unless score base Temp matches 0.. if score rate Temp matches 30..49 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value [{text: "\uf102\uE004 ",color: "#ffffff",italic: false},{text: "防御力",color: "#5dccab"},{text: " \uE010 ",color: "gray"},{text: "$(value)",color: "#d94262"},{text: " [$(rate)%]",color: "#f5eb4a"}]
$execute unless score base Temp matches 0.. if score rate Temp matches 50..69 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value [{text: "\uf102\uE004 ",color: "#ffffff",italic: false},{text: "防御力",color: "#5dccab"},{text: " \uE010 ",color: "gray"},{text: "$(value)",color: "#d94262"},{text: " [$(rate)%]",color: "#40CF84"}]
$execute unless score base Temp matches 0.. if score rate Temp matches 70..89 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value [{text: "\uf102\uE004 ",color: "#ffffff",italic: false},{text: "防御力",color: "#5dccab"},{text: " \uE010 ",color: "gray"},{text: "$(value)",color: "#d94262"},{text: " [$(rate)%]",color: "#4182fa"}]
$execute unless score base Temp matches 0.. if score rate Temp matches 90..100 run data modify block ~ ~-1 ~ Items[{Slot:13b}].components."minecraft:lore" append value [{text: "\uf102\uE004 ",color: "#ffffff",italic: false},{text: "防御力",color: "#5dccab"},{text: " \uE010 ",color: "gray"},{text: "$(value)",color: "#d94262"},{text: " [$(rate)%]",color: "#b4f1f9"}]

